package com.book.paymentservice;

import org.springframework.ui.Model;

import com.book.entity.Book;
import com.book.paymententity.ConfirmOrder;

public interface PaymentService {

    public String	processPayment(int bookId, 
    		String bookName,
    		double bookPrice, 
    		String status,
    		ConfirmOrder confirmOrder, 
    		Model model);
	
	public String cancelPayment(String status, Model model);
	
}
