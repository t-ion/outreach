package com.cts.Outreach.app;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication(scanBasePackages = { "com.cts.Outreach.controller" })
public class OutreachAppApplication {

	public static void main(String[] args) {
		SpringApplication.run(OutreachAppApplication.class, args);
	}

}
