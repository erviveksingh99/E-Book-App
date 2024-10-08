package com.book.orderService;

import java.util.List;

import com.book.orderentity.OrderHistory;

public interface OrderHistoryService {
	
	public List<OrderHistory> getAllOrderHistories();

	public void migrateOrders();
	
}
