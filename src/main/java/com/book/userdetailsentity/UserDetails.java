package com.book.userdetailsentity;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import lombok.Data;

@Data
@Entity
public class UserDetails {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int userId;
	
	private String uerName;
	private long mobileNum;
	private String address1;
	private String address2;
	private String state;
	private int pincode;
	private String district;
}
