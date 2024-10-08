package com.book.returnentity;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Entity
public class ReturnRequest {
    
	@Id
    private String orderNum;
	
    private String userName;
    private String mobile;
    private String upi;
}
