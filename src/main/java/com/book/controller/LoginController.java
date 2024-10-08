package com.book.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class LoginController {

    @GetMapping("/login")
    public String showLoginPage() {
        return "login"; // This returns the login.jsp page
    }

    @PostMapping("/login")
    public ModelAndView handleLogin(@RequestParam("username") String username, 
                                    @RequestParam("password") String password) {
        System.out.println("Received username: " + username + ", password: " + password);

        boolean isAuthenticated = "vivek@123".equals(username) && "12345".equals(password);

        System.out.println("Authentication successful: " + isAuthenticated);
        
        if (isAuthenticated) {
            return new ModelAndView("redirect:/books"); // Redirect to the book page
        } else {
            ModelAndView modelAndView = new ModelAndView("/login");
            modelAndView.addObject("error", "Invalid username or password");
            return modelAndView; // Return to the same login page with an error message
        }
    }

}
