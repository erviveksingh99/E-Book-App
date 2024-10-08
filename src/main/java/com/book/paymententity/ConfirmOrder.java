package com.book.paymententity;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "Confirm_Order")
public class ConfirmOrder {
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int confirmOrderId;
    
    private int productId;
    private String productName;
    private double productPrice;
    private String status;
    
    // Additional fields and methods if needed
}

