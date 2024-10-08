package com.book.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.book.returnentity.ReturnRequest;
import com.book.returnrepository.ReturnReqRepo;
import com.book.returnservice.ReturnService;

@Controller
public class ReturnController {
   
    @Autowired
    private ReturnReqRepo repo;

    @PostMapping("/bookReturn")
    public String processPayment(
            @RequestParam("orderNum") String orderNum,
            @RequestParam("userName") String userName,
            @RequestParam("mobile") String mobile,
            @RequestParam("upi") String upi,
            Model model) {

        // Create a ReturnRequest object if needed
        ReturnRequest request = new ReturnRequest();
        request.setOrderNum(orderNum);
        request.setUserName(userName);
        request.setMobile(mobile);
        request.setUpi(upi);

        repo.save(request);
        
        model.addAttribute("request", request);
        // Process the payment
        return "return";
    }

    @GetMapping("/return")
    public String showReturnForm() {
        return "return"; // Ensure this matches the name of your JSP file (excluding .jsp extension)
    }

    @RequestMapping("/cancelreturn")
    public String cancelReturn(Model model) {
       model.addAttribute("message","Cancel Return");
    	return "cancelreturn";
    }
}
