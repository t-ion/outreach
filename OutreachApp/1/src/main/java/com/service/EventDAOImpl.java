package com.service;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Component;

import com.model.Event;

@Component("EventDAOImpl")
public class EventDAOImpl implements EventDAO {

	@Autowired
	private JdbcTemplate jdbcTemplate;

	public JdbcTemplate getJdbcTemplate() {
		return jdbcTemplate;
	}

	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}

	// constructor
	public EventDAOImpl(DataSource dataSoruce) {
		jdbcTemplate = new JdbcTemplate(dataSoruce);
	}

	@Override
	public void createEvent(Event event,int id) {
		String sql = "insert into event(eventID,activity,description,place,date,contactNumber,a_id) values(?,?,?,?,?,?,?)";

		jdbcTemplate.update(sql, new Object[] { event.getEventId(), event.getActivity(), event.getDescription(),
				event.getPlace(),event.getSqlDate(), event.getContactNumber(),id });

	}

	@Override
	public List<Event> getEventListbyAdminId(int id) {
		
		List<Event> eventList = jdbcTemplate.query("SELECT * FROM event where a_id=?", 
				new Object[] {id}, new RowMapper<Event>() {

			@Override
			public Event mapRow(ResultSet rs, int rowNum) throws SQLException {
				Event a1 = new Event();

				a1.setEventId(rs.getString("eventID"));
				a1.setActivity(rs.getString("activity"));
				a1.setDate(rs.getDate("date").toString());
				a1.setPlace(rs.getString("place"));
				a1.setContactNumber(rs.getLong("contactNumber"));
				return a1;
			}
		});

		return eventList;
	}
	@Override
	public List<Event> get15EventList() {
		
		List<Event> eventList = jdbcTemplate.query("SELECT * FROM outreach.event where ( DATEDIFF(date,CURDATE())<=15 and DATEDIFF(date,CURDATE())>=0); ", new RowMapper<Event>() {

			@Override
			public Event mapRow(ResultSet rs, int rowNum) throws SQLException {
				Event a1 = new Event();

				a1.setEventId(rs.getString("eventID"));
				a1.setActivity(rs.getString("activity"));
				a1.setDate(rs.getDate("date").toString());
				a1.setPlace(rs.getString("place"));
				a1.setContactNumber(rs.getLong("contactNumber"));
				
				return a1;
			}
		});

		return eventList;
	}

	@Override
	public void registerVolunteer(int v_id, int e_id) {
		
		String sql = "insert into event_reg(eventID,v_id,a_id) values(?,?,(select a_id from event where eventID=?))";

		jdbcTemplate.update(sql, new Object[] {e_id,v_id,e_id});
		
	}

	@Override
	public void volunteerAttended(int v_id, int e_id) {
		
		String sql="update event_reg set attendance=\"p\" where eventID=? and v_id=?";
		
		jdbcTemplate.update(sql, new Object[] {e_id,v_id});
		
		List<Event> eventList = jdbcTemplate.query("SELECT activity FROM event where eventID=? ",new Object[] {e_id}, new RowMapper<Event>() {

			@Override
			public Event mapRow(ResultSet rs, int rowNum) throws SQLException {
				Event a1 = new Event();
				a1.setActivity(rs.getString("activity"));
				return a1;
			}
		});
		
		String act= eventList.get(0).getActivity();
		int wahp=0;
		
		if(act.equalsIgnoreCase("beautifying the nursery"))
				wahp=50;
		else if(act.equalsIgnoreCase("greeting cards for 12std students"))
				wahp=50 ;
		else if(act.equalsIgnoreCase("seed ball making on weekend"))
				wahp= 100;
		else if(act.equalsIgnoreCase("teaching in government school"))
				wahp=200 ;
		else if(act.equalsIgnoreCase("beach clean up"))
				wahp=300 ;
		else if(act.equalsIgnoreCase("planting trees"))
				wahp= 400;
		else if(act.equalsIgnoreCase("weekend farming"))
				wahp=500 ;

		sql="update volunteer set wahPoints=? where v_id=?";
		jdbcTemplate.update(sql, new Object[] {wahp,v_id});

	}

}
