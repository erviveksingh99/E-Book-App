package com.book.orderentity;

import jakarta.persistence.Entity;
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
public class OrderHistory {
    
    @Id
    private long confirmOrderId;  // Manually assigned ID
    /*
    private String productId;
    private String productName;
    private String productPrice;
    private String status;
    */
    private int bookId;
    private String bookName;
    private double bookPrice;
    private String status;
    
    // Additional fields and methods if needed
}

