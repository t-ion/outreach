package com.cognizant.OutreachApp;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication(scanBasePackages = { "com.controller", "com.model", "com.service","com.config" })
public class OutreachAppApplication {

	public static void main(String[] args) {
		SpringApplication.run(OutreachAppApplication.class, args);
	}

}
