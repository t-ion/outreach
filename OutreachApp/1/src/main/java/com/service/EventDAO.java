package com.service;

import java.util.List;

import com.model.Event;

public interface EventDAO {

	public void createEvent(Event event, int id);
	public List<Event> getEventListbyAdminId(int id);
	public List<Event> get15EventList();
	public void registerVolunteer(int v_id,int e_id);
	public void volunteerAttended(int v_id,int e_id);
}
