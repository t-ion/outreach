package com.cts.Outreach.controller;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.cts.Outreach.app.Event;
import com.cts.Outreach.app.WrapAttendance;

@Controller
public class MainController {
	@RequestMapping(value="/adminDashboard")
	public String showDashboard_admin() {
		return "admin_dash";
	}
	@RequestMapping(value = "/eventview")
	public String Eventpage(@ModelAttribute("event") Event event,Model model) {
		model.addAttribute("eventList",getEvents());
		return "view_event";

	}
	@RequestMapping(value = "/eventSchedule/{id}")
	public String showEventSchedule(@PathVariable("id")String id,Model model) {
		System.out.println("this is event id--"+id+"use this to query database");
		Event event=new Event();
		event.setEventId(id);
		model.addAttribute("eventsc",event);
		return "eventSchedule";
	}
	
	@RequestMapping(value="/attendance")
	public String showAttendancePage(Model model) {
//		volunteerlist=new ArrayList<>();
		List<String> list=new ArrayList<String>(Arrays.asList("tejas","nayan","sachin","vinay"));
		for(String s:list) {
			System.out.println(s);
		}
		model.addAttribute("volunteerlist",list);
		return "attendance";
	}
	
	@RequestMapping(value="/attendancesubmit", method = RequestMethod.POST)
	public String submitAttendance(@Valid @ModelAttribute("att")WrapAttendance att,BindingResult result,Model model) {
		if(result.hasErrors()) {
			System.out.println("error");
		}
		List<String> presentvolunteerlist=att.getPresentList();
		for(String e: presentvolunteerlist) {
		System.out.println(e);
		}
		model.addAttribute("volunteerlist",getEvents());
		model.addAttribute("msg","Submitted successfully");
		return "attendance";
	}
	
	public List<Event> getEvents() {
		System.out.println("getevent");
		List<Event> eventList= new ArrayList<Event>();
		Event event=new Event();
		event.setEventId("0001");
		event.setEventName("outreach");
		eventList.add(event);
		event=new Event();
		event.setEventId("0002");
		event.setEventName("blood donation camp");
		eventList.add(event);
		event.setEventId("0003");
		event.setEventName("beach clraning");
		eventList.add(event);
		
		return eventList;
	}
//	public List<Volunteer> getVolunteers() {
//		List<Volunteer> volunteerList = new ArrayList<Volunteer>();
//		return volunteerList;
//	}
}
