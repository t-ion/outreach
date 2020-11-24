package com.service;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Component;

import com.model.Admin;

@Component("AdminDaoImpl")
public class AdminDaoImpl implements AdminDao {

	@Autowired
	private JdbcTemplate jdbcTemplate;

	public JdbcTemplate getJdbcTemplate() {
		return jdbcTemplate;
	}

	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}

	// Constructor
	public AdminDaoImpl(DataSource dataSoruce) {
		jdbcTemplate = new JdbcTemplate(dataSoruce);
	}

	@Override
	public void createAdmin(Admin admin1) {
		String sql = "insert into admin(a_id,a_fname,a_lname,a_gender,a_age,a_contact,a_password) values(?,?,?,?,?,?,?)";

		try {

			jdbcTemplate.update(sql, new Object[] { admin1.getAdminId(), admin1.getFirstName(), admin1.getLastName(),
					admin1.getGender(), admin1.getAge(), admin1.getContactNumber(), admin1.getPassword() });

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@Override
	public boolean readAdmin(String aId) {

		List<Admin> AdminList = jdbcTemplate.query("SELECT * FROM admin where a_id=?", new Object[] {aId}, new RowMapper<Admin>() {

			@Override
			public Admin mapRow(ResultSet rs, int rowNum) throws SQLException {
				Admin a1 = new Admin();

				a1.setAdminId(rs.getString("a_id"));
				a1.setPassword(rs.getString("a_password"));

				return a1;
			}
		});

		if(AdminList.get(0).getAdminId().equals(aId))
			return true;
		
		return false;
	}


}
