package com.book.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name = "e_BookApp")
public class Book {
   
	@Id
	private int bookId;
    private String bookName;
    private double bookPrice;
    private String bookImageUrl; // URL of the book image
    private String tutorialUrl; // New field for the tutorial URL
    
    
    public Book(String bookName, double bookPrice)
    {
    	this.bookName=bookName;
    	this.bookPrice=bookPrice;
    }


	public String getName() {
		// TODO Auto-generated method stub
		return null;
	}
    
}

