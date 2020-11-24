package com.service;

import java.util.List;

import com.model.Volunteer;

public interface VolunteerDao {

	public void createVolunteer(Volunteer volunteer);
    
	public List<Volunteer> readVolunteer();
	
	public List<Volunteer> readRegVolunteer(int aId,int eId);

	
}