package com.ute.shopping.payment;

import com.ute.common.entity.Customer;
import com.ute.common.entity.Payment;
import com.ute.common.response.ResponseMessage;
import com.ute.shopping.security.CustomUserDetailsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import com.ute.common.response.PaymentResponse;
import com.ute.shopping.util.Config;

import java.io.IOException;
import java.net.URLEncoder;
import java.nio.charset.StandardCharsets;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TimeZone;
import javax.servlet.http.HttpServletRequest;

@RestController
@RequestMapping("/api")
public class PaymentRestController {

    @Autowired
    IPaymentService paymentService;

    @Autowired
    CustomUserDetailsService customUserDetailsService;

    @PostMapping("/create-payment")
    public ResponseEntity<?> createPayment(HttpServletRequest req, @RequestBody Map<String, String> param)
            throws IOException {

        String vnp_Version = "2.1.0";
        String vnp_Command = "pay";
        String totalPrice = param.get("totalPrice");
        long amount = Long.parseLong(totalPrice) * 100;
        String bankCode = "VNBANK";
        String vnp_TxnRef = Config.getRandomNumber(8);
        String vnp_IpAddr = Config.getIpAddress(req);
        String vnp_TmnCode = Config.vnp_TmnCode;

        Map<String, String> vnp_Params = new HashMap<>();
        vnp_Params.put("vnp_Version", vnp_Version);
        vnp_Params.put("vnp_Command", vnp_Command);
        vnp_Params.put("vnp_TmnCode", vnp_TmnCode);
        vnp_Params.put("vnp_Amount", String.valueOf(amount));
        vnp_Params.put("vnp_CurrCode", "VND");

        if (bankCode != null && !bankCode.isEmpty()) {
            vnp_Params.put("vnp_BankCode", bankCode);
        }
        vnp_Params.put("vnp_TxnRef", vnp_TxnRef);
        vnp_Params.put("vnp_OrderInfo", "Thanh toan don hang:" + vnp_TxnRef);
        // vnp_Params.put("vnp_OrderType", orderType);

        String locate = "vn";
        if (locate != null && !locate.isEmpty()) {
            vnp_Params.put("vnp_Locale", locate);
        } else {
            vnp_Params.put("vnp_Locale", "vn");
        }
        vnp_Params.put("vnp_ReturnUrl", Config.vnp_ReturnUrl);
        vnp_Params.put("vnp_IpAddr", vnp_IpAddr);

        Calendar cld = Calendar.getInstance(TimeZone.getTimeZone("Etc/GMT+7"));
        SimpleDateFormat formatter = new SimpleDateFormat("yyyyMMddHHmmss");
        String vnp_CreateDate = formatter.format(cld.getTime());
        vnp_Params.put("vnp_CreateDate", vnp_CreateDate);

        cld.add(Calendar.MINUTE, 435);
        String vnp_ExpireDate = formatter.format(cld.getTime());
        vnp_Params.put("vnp_ExpireDate", vnp_ExpireDate);

        List fieldNames = new ArrayList(vnp_Params.keySet());
        Collections.sort(fieldNames);
        StringBuilder hashData = new StringBuilder();
        StringBuilder query = new StringBuilder();
        Iterator itr = fieldNames.iterator();
        while (itr.hasNext()) {
            String fieldName = (String) itr.next();
            String fieldValue = (String) vnp_Params.get(fieldName);
            if ((fieldValue != null) && (fieldValue.length() > 0)) {
                // Build hash data
                hashData.append(fieldName);
                hashData.append('=');
                hashData.append(URLEncoder.encode(fieldValue, StandardCharsets.US_ASCII.toString()));
                // Build query
                query.append(URLEncoder.encode(fieldName, StandardCharsets.US_ASCII.toString()));
                query.append('=');
                query.append(URLEncoder.encode(fieldValue, StandardCharsets.US_ASCII.toString()));
                if (itr.hasNext()) {
                    query.append('&');
                    hashData.append('&');
                }
            }
        }
        String queryUrl = query.toString();
        String vnp_SecureHash = Config.hmacSHA512(Config.vnp_HashSecret, hashData.toString());
        queryUrl += "&vnp_SecureHash=" + vnp_SecureHash;
        String paymentUrl = Config.vnp_PayUrl + "?" + queryUrl;

        PaymentResponse result = new PaymentResponse();
        result.setCode("00");
        result.setMessage("Success");
        result.setUrl(paymentUrl);
        return new ResponseEntity<>(result, HttpStatus.OK);
    }

    @PostMapping("payment-information")
    public ResponseEntity<?> paymentInformation(@RequestBody Payment paymentInfo) {

        Customer customer = customUserDetailsService.getCurrentCustomer();
        Payment payment = new Payment(paymentInfo.getVnpTxnRef());
        payment.setAmount(paymentInfo.getAmount());
        payment.setVnpBankCode(paymentInfo.getVnpBankCode());
        payment.setVnpCardType(paymentInfo.getVnpCardType());
        payment.setVnpBankTranNo(paymentInfo.getVnpBankTranNo());
        payment.setVnpOrderInfo(paymentInfo.getVnpOrderInfo());
        payment.setVnpPayDate(paymentInfo.getVnpPayDate());
        payment.setVnpResponseCode(paymentInfo.getVnpResponseCode());
        payment.setVnpSecureHash(paymentInfo.getVnpSecureHash());
        payment.setVnpTmnCode(paymentInfo.getVnpTmnCode());
        payment.setVnpTransactionNo(paymentInfo.getVnpTransactionNo());
        payment.setVnpTransactionStatus(paymentInfo.getVnpTransactionStatus());
        payment.setCustomer(customer);

        paymentService.save(payment);

        return new ResponseEntity<>(new ResponseMessage("Save payment information successfully"), HttpStatus.OK);
    }
}