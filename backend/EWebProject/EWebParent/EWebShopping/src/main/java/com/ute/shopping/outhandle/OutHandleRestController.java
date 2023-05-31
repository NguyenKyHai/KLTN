package com.ute.shopping.outhandle;

import com.ute.common.util.MailUtil;
import com.ute.shopping.util.MailTemplate;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.mail.MessagingException;
import java.math.BigDecimal;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;


@RestController
public class OutHandleRestController {

    @GetMapping("/")
    public ResponseEntity<?> welcome() {

        return new ResponseEntity<>("Welcome to our API HDK Web Shopping 2.2.2!", HttpStatus.OK);
    }

//    @GetMapping("/mail")
//    public ResponseEntity<?> mailTemplate() throws MessagingException {
//
//
//        String verifyCode = MailTemplate.verifyCode(HelperUtil.randomString());
//
//        boolean check = MailUtil.sendMail("19110227@student.hcmute.edu.vn", "Verification code",
//                verifyCode);
//        if (check) {
//            return new ResponseEntity<>("Send mail successfully", HttpStatus.OK);
//        } else {
//            return new ResponseEntity<>("Error in processing", HttpStatus.OK);
//        }
//    }

    @GetMapping("/mail")
    public ResponseEntity<?> orderTemplate() throws MessagingException {

        String head = MailTemplate.head;
        Calendar cal = Calendar.getInstance();
        DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
        cal.add(Calendar.MINUTE, 420);
        String strDate = dateFormat.format(cal.getTime());
        String table = MailTemplate.table(strDate);
        String customerInfo = MailTemplate.customerInfo("Hải Nguyễn", "0386058778", "Trường Thọ Thủ Đức");
        String orderInfo = "";
        for (int i = 0; i < 2; i++) {
            orderInfo += MailTemplate.orderInfo("Máy tính", 1,
                    BigDecimal.valueOf(12588000),
                    BigDecimal.valueOf(45000));
        }
        String totalPrice = MailTemplate.totalPrice(BigDecimal.valueOf(20182000));

        boolean check = MailUtil.sendMail("19110197@student.hcmute.edu.vn", "Xin chào",
                head + table + customerInfo + orderInfo + totalPrice);
        if (check) {
            return new ResponseEntity<>("Send mail successfully", HttpStatus.OK);
        } else {
            return new ResponseEntity<>("Error in processing", HttpStatus.OK);
        }
    }
}
