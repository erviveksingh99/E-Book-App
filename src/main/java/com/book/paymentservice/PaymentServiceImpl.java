package com.book.paymentservice;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import com.book.paymententity.ConfirmOrder;
import com.book.paymentrepository.PaymentRepo;

@Service
public class PaymentServiceImpl implements PaymentService
{
	@Autowired
	private PaymentRepo paymentRepo;
	

	@Override
	public String processPayment(int bookId,
								String bookName, 
								double bookPrice,
								String status,
								ConfirmOrder confirmOrder,
								Model model) {
		
		ConfirmOrder co=new ConfirmOrder();
		//co.setConfirmOrderId(confirmOrder.getConfirmOrderId());
		co.setProductId(confirmOrder.getProductId());
		co.setProductName(confirmOrder.getProductName());
		co.setProductPrice(confirmOrder.getProductPrice());
		
		if(status ==null)
		{
			//System.out.println("null status");
			status="Payment successful!";
			co.setStatus(status);
			co.setStatus(confirmOrder.getStatus());
			paymentRepo.save(co);
		//	model.addAttribute("message", status);
			model.addAttribute("bookingStatus", status);
			return "paymentSuccess";
		}
		else
		{
			//System.out.println("not null status");
			status="Payment successful!";
			
			co.setStatus(status);
			co.setStatus(confirmOrder.getStatus());
			paymentRepo.save(co);
			//model.addAttribute("message", status);
			model.addAttribute("bookingStatus", status);
			
			return "paymentSuccess";
		}
	}	
	
	

	@Override
	public String cancelPayment(String status, Model model) {
		if(status ==null)
		{
			status="Payment canceled!";
			model.addAttribute("bookingStatus", status);
			return "cancel";
		}
		else
		{
			status="Payment canceled!";
			model.addAttribute("bookingStatus", status);
			return "cancel";
		}
		
		
	}

}
