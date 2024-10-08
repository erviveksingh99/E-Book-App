package com.book.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.book.orderService.OrderHistoryService;
import com.book.orderentity.OrderHistory;

@Controller
public class OrderHistoryController {

	  @Autowired
	    private OrderHistoryService orderHistoryService;
	  

	    @GetMapping("/history")
	    public String showOrderHistory(Model model) {
	    	
	    	orderHistoryService.migrateOrders();
	        List<OrderHistory> orderHistories = orderHistoryService.getAllOrderHistories();
	        model.addAttribute("orderHistories", orderHistories);
	        return "order"; // Name of the JSP file (order.jsp)
	    }

}
