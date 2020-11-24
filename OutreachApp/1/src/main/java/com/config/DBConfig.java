package com.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Primary;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.datasource.DriverManagerDataSource;

import com.service.VolunteerDao;
import com.service.VolunteerDaoImpl;
import com.service.AdminDao;
import com.service.AdminDaoImpl;

@Configuration
public class DBConfig {

	@Bean
	DriverManagerDataSource getDataSource() {
		DriverManagerDataSource ds = new DriverManagerDataSource();
		ds.setDriverClassName("com.mysql.cj.jdbc.Driver");
		ds.setUrl("jdbc:mysql://localhost:3306/outreach?autoReconnect=true&useSSL=false");
		ds.setUsername("root");
		ds.setPassword("root");

		return ds;
	}

	@Bean
	public JdbcTemplate jdbcTempolate() {
		JdbcTemplate jdbcTemplate = new JdbcTemplate();
		jdbcTemplate.setDataSource(getDataSource());
		
		return jdbcTemplate;
	}

	@Bean
	@Primary
	public VolunteerDao volunteerDao() {
		VolunteerDaoImpl volunteer1 = new VolunteerDaoImpl(getDataSource());
		
		return volunteer1;
	}

	@Bean
	public AdminDao adminDao() {
		AdminDaoImpl admin1 = new AdminDaoImpl(getDataSource());
		
		return admin1;
	}
}
