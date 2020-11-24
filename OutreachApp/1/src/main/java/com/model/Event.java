package com.model;

import java.sql.Date;

import org.springframework.stereotype.Component;

@Component
public class Event {

	private String eventId;
	private String activity;
	private String description;
	private String place;
	private String date;
	private Long contactNumber;

	public String getEventId() {
		return eventId;
	}

	public void setEventId(String eventId) {
		this.eventId = eventId;
	}

	public String getActivity() {
		return activity;
	}

	public void setActivity(String activity) {
		this.activity = activity;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getPlace() {
		return place;
	}

	public void setPlace(String place) {
		this.place = place;
	}

	public String getDate() {
		return date;
	}

	public Date getSqlDate(){
		Date datesql= Date.valueOf(date);
		return datesql;
	}
	public void setDate(String date) {
		this.date = date;
	}

	public Long getContactNumber() {
		return contactNumber;
	}

	public void setContactNumber(Long contactNumber) {
		this.contactNumber = contactNumber;
	}

}
