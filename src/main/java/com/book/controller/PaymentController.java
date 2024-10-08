package com.book.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;

import com.book.entity.Book;
import com.book.paymententity.ConfirmOrder;
import com.book.paymentservice.PaymentService;

@Controller
public class PaymentController {

	@Autowired
	private PaymentService paymentService;
	
    @PostMapping("/paymentSuccess")
    public String processPayment(@RequestParam("amount") int bookId,
    		@RequestParam("bookName") String bookName,
    		@RequestParam("bookPrice") double bookPrice,
    		@RequestParam("status") String status, 
                                 Model model) 
    {
    	
        // Handle the payment processing logic here
        // Save the payment details and booking status to the database
    	
    	ConfirmOrder co=new ConfirmOrder();
    	co.setProductId(bookId);
    	co.setProductName(bookName);
    	co.setProductPrice(bookPrice);
    	co.setStatus("Booking successful");
    	
    	
    	System.out.println("Amount : "+bookId);
    	System.out.println("Name : "+bookName);
    	System.out.println("Price : "+bookPrice);
    	
    	
    	return paymentService.processPayment(bookId,bookName,bookPrice, status, co,model);
    	
    }
    
    

    @GetMapping("/cancel")
    public String cancelPayment(@RequestParam(value = "status", required = false) String status, Model model) {
        // Handle the cancellation logic here
        // Use default value if status is not provided
        return paymentService.cancelPayment(status, model);
    }

}