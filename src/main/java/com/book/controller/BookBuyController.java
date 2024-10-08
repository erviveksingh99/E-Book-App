package com.book.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class BookBuyController {

	@PostMapping("/buyBook")
	public String buyBook(@RequestParam("bookId")	int bookId, 
						  @RequestParam("bookPrice") double bookPrice,
						  @RequestParam("bookName") String bookName,
						  Model model) {
		// Add book data to the model
		
		model.addAttribute("bookId", bookId);
		model.addAttribute("bookName", bookName);
		model.addAttribute("bookPrice", bookPrice);

		// Redirect to the BookBuy JSP file
		return "bookBuy";
	}
}
