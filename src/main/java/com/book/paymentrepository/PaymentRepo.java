package com.book.paymentrepository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.book.paymententity.ConfirmOrder;

public interface PaymentRepo extends JpaRepository<ConfirmOrder, Integer>{
	 List<ConfirmOrder> findAll(); // Fetch all records
}
