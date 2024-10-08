package com.book.userdetailsService;

import org.springframework.ui.Model;
import com.book.userdetailsentity.UserDetails;

public interface UserDetailsService {

	String userDetails(int userId, String userName, long mobileNum, String address1, String address2, String state,
			int pincode, String district, UserDetails userDtls, Model model);


	//public String userDetails(UserDetails userDetails, Model model);
}
