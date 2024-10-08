package com.book;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.transaction.annotation.EnableTransactionManagement;

@SpringBootApplication
public class SpringMvcBookAppApplication {

	public static void main(String[] args) {
		SpringApplication.run(SpringMvcBookAppApplication.class, args);
		System.err.println("Start");
	}
}
