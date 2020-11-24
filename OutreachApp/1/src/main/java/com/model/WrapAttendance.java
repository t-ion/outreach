package com.model;

import java.util.List;

import org.springframework.stereotype.Component;

@Component
public class WrapAttendance {

	private List<String> presentList;

	public List<String> getPresentList() {
		return presentList;
	}

	public void setPresentList(List<String> presentList) {
		this.presentList = presentList;
	}
}
