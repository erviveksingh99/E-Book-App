package com.book.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;

import com.book.userdetailsService.UserDetailsService;
import com.book.userdetailsentity.UserDetails;

@Controller
public class UserDetailsController {
	
	@Autowired
	private UserDetailsService detailsService;
	
	
	@PostMapping("/user")
	public String userDetails(@RequestParam ("userId") int userId,
						@RequestParam("userName") String userName,
            			@RequestParam("mobileNum") long mobileNum,
            			@RequestParam("address1") String address1,
            			@RequestParam("address2") String address2,
            			@RequestParam("state") String state,
            			@RequestParam("pincode") int pincode,
            			@RequestParam("district") String district,
            			@RequestBody UserDetails ud,
						 Model model)
	{
		UserDetails userDtls=new UserDetails();
		userDtls.setUserId(userId);
		userDtls.setUerName(userName);
		userDtls.setMobileNum(mobileNum);
		userDtls.setAddress1(address1);
		userDtls.setAddress2(address2);
		userDtls.setState(state);
		userDtls.setPincode(pincode);
		userDtls.setDistrict(district);
		
		return detailsService.userDetails(
									userId,
									userName, 
									mobileNum, 
									address1, 
									address2, 
									state, 
									pincode, 
									district,							
									userDtls,
									model);
	}
	
	
	/*

	    @PostMapping("/user")
	    public String userDetails(@ModelAttribute UserDetails userDetails, Model model) {
	        return detailsService.userDetails(userDetails, model);
	    }
	
	*/
	
	
}
