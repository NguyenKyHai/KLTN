package com.ute.admin.user;

import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.Optional;
import java.util.Set;
import javax.annotation.security.RolesAllowed;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;

import com.ute.common.request.UpdateUserRequest;
import com.ute.common.util.HelperUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Sort;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.util.StringUtils;
import com.cloudinary.Cloudinary;
import com.cloudinary.utils.ObjectUtils;
import com.lowagie.text.DocumentException;
import com.ute.admin.jwt.JwtTokenFilter;
import com.ute.admin.jwt.JwtTokenUtil;
import com.ute.admin.user.export.UserExcelExporter;
import com.ute.admin.user.export.UserPdfExporter;
import com.ute.common.constants.Constants;
import com.ute.common.entity.Role;
import com.ute.common.entity.User;
import com.ute.common.request.UserRequest;
import com.ute.common.response.ResponseMessage;

@RestController
@RequestMapping("/api")
@RolesAllowed("ROLE_ADMIN")
public class UseRestController {

    @Autowired
    IUserService userService;
    @Autowired
    AuthenticationManager authManager;
    @Autowired
    JwtTokenUtil jwtUtil;
    @Autowired
    Cloudinary cloudinary;
    @Autowired
    JwtTokenFilter jwtTokenFilter;

    @GetMapping("/users")
    public ResponseEntity<?> getListUsers() {
        List<User> listUsers = userService.getAllUsers();
        return new ResponseEntity<>(listUsers, HttpStatus.OK);
    }

    @RolesAllowed("ROLE_ADMIN")
    @PostMapping("/user/create")
    public ResponseEntity<?> createUser(@RequestBody @Valid UserRequest userRequest) {
        if (userService.existsByEmail(userRequest.getEmail())) {
            return new ResponseEntity<>(new ResponseMessage("The email is existed"), HttpStatus.BAD_REQUEST);
        }

        User user = new User(userRequest.getEmail(), userRequest.getPassword(), userRequest.getFullName(),
                userRequest.getPhoneNumber(), userRequest.getAddress());
        Set<String> strRole = userRequest.getRoles();
        Set<Role> roles = userService.addRoles(strRole);
        user.setPhotos(Constants.PHOTO_IMAGE_DEFAULT);
        user.setPublicId(Constants.USER_PUBLIC_ID_DEFAULT);
        user.setStatus(Constants.STATUS_INITIAL);
        user.setRoles(roles);
        user.setSessionString(HelperUtil.randomString());
        userService.save(user);
        return new ResponseEntity<>(new ResponseMessage("Create a new user successfully!"), HttpStatus.CREATED);
    }

    @PutMapping("/user/update-photo/{id}")
    public ResponseEntity<?> updatePhoto(@PathVariable Integer id, @RequestParam("image") MultipartFile multipartFile)
            throws IOException {
        Optional<User> user = userService.findUserById(id);

        if (!user.isPresent()) {
            return new ResponseEntity<>(new ResponseMessage("User not found"), HttpStatus.NOT_FOUND);
        }

        Map uploadResult;
        if (!multipartFile.isEmpty()) {
            if (user.get().getPublicId() != null) {
                cloudinary.uploader().destroy(user.get().getPublicId(),
                        ObjectUtils.asMap("public_id", "users/" + id + "/" + user.get().getPublicId()));
            }

            String fileName = StringUtils.cleanPath(multipartFile.getOriginalFilename());
            uploadResult = cloudinary.uploader().upload(multipartFile.getBytes(),
                    ObjectUtils.asMap("public_id", "users/" + user.get().getId() + "/"
                            + HelperUtil.deleteExtensionFileImage(fileName)));

            String photo = uploadResult.get("secure_url").toString();
            String publicId = uploadResult.get("public_id").toString();

            user.get().setPhotos(photo);
            user.get().setPublicId(publicId);

        } else {
            if (user.get().getPhotos().isEmpty())
                user.get().setPhotos(Constants.PHOTO_IMAGE_DEFAULT);
        }
        userService.save(user.get());

        return new ResponseEntity<>(new ResponseMessage("Updated photo successfully"), HttpStatus.OK);
    }

    @GetMapping("/user/{id}")
    public ResponseEntity<?> getUser(@PathVariable Integer id) {

        Optional<User> user = userService.findUserById(id);
        if (!user.isPresent()) {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
        return new ResponseEntity<>(user.get(), HttpStatus.OK);

    }

    @PutMapping("/user/{id}")
    public ResponseEntity<?> updateUser(@PathVariable Integer id, @RequestBody UpdateUserRequest request) throws IOException {

        Optional<User> user = userService.findUserById(id);

        if (!user.isPresent()) {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
        user.get().setFullName(request.getFullName());
        user.get().setPhoneNumber(request.getPhoneNumber());
        user.get().setAddress(request.getAddress());

        userService.save(user.get());
        return new ResponseEntity<>(user.get(), HttpStatus.OK);
    }

    @PutMapping("/user/update-role/{id}")
    public ResponseEntity<?> updateUserRole(@PathVariable Integer id,
                                            @RequestBody Map<String, Set<String>> param) {
        Optional<User> user = userService.findUserById(id);
        if (!user.isPresent()) {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
        Set<String> strRole = param.get("roles");
        Set<Role> roles = userService.addRoles(strRole);
        user.get().setRoles(roles);
        userService.save(user.get());
        return new ResponseEntity<>(new ResponseMessage("Updates roles successfully!"), HttpStatus.OK);
    }

    @PutMapping("user/block/{id}")
    public ResponseEntity<?> blockUser(@PathVariable Integer id,
                                       @RequestBody Map<String, String> param) {
        Optional<User> user = userService.findUserById(id);

        if (!user.isPresent()) {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
        Set<Role> roles = user.get().getRoles();
        boolean checkAdmin = false;
        for (Role r : roles) {
            if (r.getName().equals(Constants.ROLE_ADMIN))
                checkAdmin = true;
        }

        if (checkAdmin) {
            return new ResponseEntity<>(new ResponseMessage("You do not block/unblock user with role Admin"),
                    HttpStatus.NOT_ACCEPTABLE);
        }
        String status = param.get("status");
        userService.updateSessionString(id, null);
        userService.updateStatus(id, status);
        return new ResponseEntity<>(new ResponseMessage("Update status successfully"), HttpStatus.OK);
    }

    @DeleteMapping("/user/{id}")
    public ResponseEntity<?> deleteUser(@PathVariable Integer id) {

        try {
            userService.deleteUserById(id);
            return new ResponseEntity<>(new ResponseMessage("Deleted user successfully"), HttpStatus.OK);
        } catch (EmptyResultDataAccessException e) {
            return new ResponseEntity<>(new ResponseMessage("User not found"), HttpStatus.NOT_FOUND);
        }
    }

    @GetMapping("/users/export/excel")
    public void exportToExcel(HttpServletResponse response) throws IOException {
        response.setContentType("application/octet-stream");
        DateFormat dateFormatter = new SimpleDateFormat("yyyy-MM-dd_HH:mm:ss");
        String currentDateTime = dateFormatter.format(new Date());

        String headerKey = "Content-Disposition";
        String headerValue = "attachment; filename=users_" + currentDateTime + ".xlsx";
        response.setHeader(headerKey, headerValue);

        List<User> listUsers = userService.getAllUsers();

        UserExcelExporter excelExporter = new UserExcelExporter();

        excelExporter.export(listUsers, response);
    }

    @GetMapping("/users/export/pdf")
    public void exportToPDF(HttpServletResponse response) throws DocumentException, IOException {
        response.setContentType("application/pdf");
        DateFormat dateFormatter = new SimpleDateFormat("yyyy-MM-dd_HH:mm:ss");
        String currentDateTime = dateFormatter.format(new Date());

        String headerKey = "Content-Disposition";
        String headerValue = "attachment; filename=users_" + currentDateTime + ".pdf";
        response.setHeader(headerKey, headerValue);

        List<User> listUsers = userService.getAllUsers();

        UserPdfExporter exporter = new UserPdfExporter();
        exporter.export(listUsers, response);

    }

    @GetMapping("/users/filter")
    public Page<User> filterAdnSortedUser(@RequestParam(defaultValue = "") String fullName,
                                          @RequestParam(defaultValue = "") String email,
                                          @RequestParam(defaultValue = "1") int page,
                                          @RequestParam(defaultValue = "20") int size,
                                          @RequestParam(defaultValue = "") List<String> sortBy,
                                          @RequestParam(defaultValue = "DESC") Sort.Direction order) {

        return userService.filterUsers(fullName,email, page, size, sortBy, order.toString());
    }

}
