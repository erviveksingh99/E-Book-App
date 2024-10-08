package com.book.userdetailsService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;

import com.book.userdetailsentity.UserDetails;
import com.book.userdetailsrepository.UserDeatilsRepository;

@Service
public class UserDetailsServiceImpl implements UserDetailsService{

	@Autowired
	private UserDeatilsRepository udRepo;
	
	/*
	@Override
	public String userDetails(UserDetails ud, Model model)
	{
		
		UserDetails user =new  UserDetails();
		user.setUerName(ud.getUerName());
		user.setMobileNum(ud.getMobileNum());
		user.setAddress1(ud.getAddress1());
		user.setAddress2(ud.getAddress2());
		user.setState(ud.getState());
		user.setPincode(ud.getPincode());
		user.setDistrict(ud.getDistrict());
		
		udRepo.save(user);
		
		model.addAttribute("userdtails", user);
		
		return "userdetails";
		
	}

	*/

	@Override
	public String userDetails(int userId, String userName, long mobileNum, String address1, String address2,
			String state, int pincode, String district, UserDetails ud, Model model) {

		UserDetails user =new  UserDetails();
		user.setUerName(ud.getUerName());
		user.setMobileNum(ud.getMobileNum());
		user.setAddress1(ud.getAddress1());
		user.setAddress2(ud.getAddress2());
		user.setState(ud.getState());
		user.setPincode(ud.getPincode());
		user.setDistrict(ud.getDistrict());
		
		udRepo.save(user);
		
		model.addAttribute("userdtails", user);
		
		return "userdetails";
		
	}
	
	
	/*
	    @Override
	    public String userDetails(UserDetails ud, Model model) {
	        // Save the user details
	        udRepo.save(ud);
	        
	        // Add user details to the model
	        model.addAttribute("userdetails", ud);
	        
	        // Return the view name
	        return "userdetails";
	    }
	*/
	
	
}
