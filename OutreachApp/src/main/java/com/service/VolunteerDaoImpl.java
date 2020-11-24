package com.service;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Component;

import com.model.Volunteer;

@Component("VolunteerDaoImpl")
public class VolunteerDaoImpl implements VolunteerDao {

	@Autowired
	private JdbcTemplate jdbcTemplate;

	public JdbcTemplate getJdbcTemplate() {
		return jdbcTemplate;
	}

	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}

	// Constructor
	public VolunteerDaoImpl(DataSource dataSoruce) {
		jdbcTemplate = new JdbcTemplate(dataSoruce);
	}

	@Override
	public void createVolunteer(Volunteer volunteer) {

		String sql = "insert into volunteer(v_id,v_fname,v_lname,v_gender,v_age,v_contact,v_password) values(?,?,?,?,?,?,?)";

		try {

			jdbcTemplate.update(sql,
					new Object[] { volunteer.getVolunteerId(), volunteer.getFirstName(), volunteer.getLastName(),
							volunteer.getGender(), volunteer.getAge(), volunteer.getContactNumber(),
							volunteer.getPassword() });

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@Override
	public List<Volunteer> readVolunteer() {
		List<Volunteer> UserList = jdbcTemplate.query("SELECT * FROM Volunteer", new RowMapper<Volunteer>() {

			@Override
			public Volunteer mapRow(ResultSet rs, int rowNum) throws SQLException {
				Volunteer volunteer = new Volunteer();

				volunteer.setVolunteerId(rs.getString("v_id"));
				volunteer.setPassword(rs.getString("v_password"));
				volunteer.setWahPoints(rs.getInt("wahPoints"));
				return volunteer;
			}

		});

		return UserList;
	}

	@Override
	public List<Volunteer> readRegVolunteer(int aId, int eId) {
		List<Volunteer> UserList = jdbcTemplate.query("SELECT v_fName,v_id FROM volunteer where v_id in(select v_id from event_reg where eventID=? and a_id=?) ",
				new Object[] {eId,aId},new RowMapper<Volunteer>() {

			@Override
			public Volunteer mapRow(ResultSet rs, int rowNum) throws SQLException {
				Volunteer volunteer = new Volunteer();

				volunteer.setVolunteerId(rs.getString(2));
				volunteer.setFirstName(rs.getString(1));
//				volunteer.setLastName(rs.getString("v_lName"));
//				volunteer.setGender(rs.getString("v_gender"));

				return volunteer;
			}

		});
		return UserList;
	}

}