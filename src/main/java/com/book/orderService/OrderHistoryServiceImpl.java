package com.book.orderService;

import java.util.List;
import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.book.orderentity.OrderHistory;
import com.book.orderrepository.OrderHistoryRepo;
import com.book.paymententity.ConfirmOrder;
import com.book.paymentrepository.PaymentRepo;

@Service
public class OrderHistoryServiceImpl implements OrderHistoryService {

    @Autowired
    private OrderHistoryRepo orderRepo;
    
    @Autowired
    private PaymentRepo paymentRepo;
    
    
    public void migrateOrders() {
        // Fetch all orders from ConfirmOrder
        List<ConfirmOrder> confirmOrders = paymentRepo.findAll();
        
        // Map to OrderHistory and save
        for (ConfirmOrder confirmOrder : confirmOrders) {
        	
            OrderHistory orderHistory = new OrderHistory();
            
            orderHistory.setConfirmOrderId(confirmOrder.getConfirmOrderId()); // Ensure ID is set appropriately
            orderHistory.setBookId(confirmOrder.getProductId());
            orderHistory.setBookName(confirmOrder.getProductName());
            orderHistory.setBookPrice(confirmOrder.getProductPrice());
            orderHistory.setStatus(confirmOrder.getStatus());
            
            // Save to OrderHistory table
            orderRepo.save(orderHistory);
        }
    
    }
    

    public List<OrderHistory> getAllOrderHistories() {
        return orderRepo.findAll();
    }

}
