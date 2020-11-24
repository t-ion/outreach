package com.cts.Outreach.app;

import java.util.List;

import org.springframework.stereotype.Component;
@Component
public class WrapAttendance {

//	private List<Volunteer> presentList;
	private List<String> presentList;

	public List<String> getPresentList() {
		return presentList;
	}

	public void setPresentList(List<String> presentList) {
		this.presentList = presentList;
	}
}
