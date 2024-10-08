package com.book.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import com.book.bookservice.BookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

@Controller
public class BookController {

    @Autowired
    private BookService bookService;

    @GetMapping("/books")
    public String getBooks(Model model) {
        // Fetch the book data and add it to the model
        bookService.getBookData(model);
        // Return the view name where the list of books will be displayed
        return "book"; // This should correspond to the book.jsp view
    }
}

