package com.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.model.Event;
import com.model.WrapAttendance;
import com.service.AdminDao;
import com.service.EventDAO;

@Controller
public class EventController {

	@Autowired
	private EventDAO eventDao;

	/* Admin controlled event mappings*/

	// only to open create event page jsp
	@RequestMapping(value = "/createEventAdmin/{id}", method = RequestMethod.GET)
	public String createEvent(@PathVariable("id") String id, @ModelAttribute("event") Event event, Model model) {
		model.addAttribute("id", id);
		return "create_event";
	}
	@RequestMapping(value = "/eventCreated/{id}", method = RequestMethod.POST)
	public String registerEvent(@PathVariable("id") String id, @ModelAttribute("event") Event event, BindingResult result, ModelMap model) {
		if (result.hasErrors()) {
			model.addAttribute("msg", "Something went wrong. Please check the inputs.");
			return "create_event";
		}

		eventDao.createEvent(event, Integer.valueOf(id));
		model.addAttribute("msg", "Event created successfully.");
		return "create_event";
	}

	// view Events for admin
	
	@RequestMapping(value = "/eventviewAdmin/{id}", method = RequestMethod.GET)
	public String EventpageAdmin(@PathVariable("id") String id, @ModelAttribute("event") Event event, Model model) {

		model.addAttribute("eventList", eventDao.getEventListbyAdminId(Integer.valueOf(id)));
		model.addAttribute("aId",id);
		return "view_Event_Admin";
	}

	/*volunteer controlled event*/

		// view Events for volunteer
	@RequestMapping(value = "/eventviewVol/{id}", method = RequestMethod.GET)
	public String EventpageVol(@PathVariable("id") String id,@ModelAttribute("event") Event event, Model model) {
		model.addAttribute("eventList", eventDao.get15EventList());
		model.addAttribute("v_id",id);
		return "view_event";
	}

		// view event schedule for volunteer after joining (mapped to join button)
	@RequestMapping(value = "/eventSchedule/{id}", method = RequestMethod.GET)
	public String showEventSchedule(@PathVariable("id") String id, @ModelAttribute("event") Event event, Model model) {

		List<Event> eventList = eventDao.get15EventList();
		for (Event e : eventList) {
			if (e.getEventId().equals(id)) {
				model.addAttribute("eventsc", e);
				break;
			}
		}

		return "eventSchedule";
	}

	// filer events by location
	@RequestMapping(value = "/eventview/{place}", method = RequestMethod.GET)
	public String showEventSchedulelocation(@PathVariable("place") String place, @ModelAttribute("event") Event event,
			Model model) {

		List<Event> eventList = eventDao.get15EventList();
		List<Event> newEventList = new ArrayList<Event>();
		for (Event e : eventList) {
			if (e.getPlace().equalsIgnoreCase(place)) {
				newEventList.add(e);
			}
		}
		model.addAttribute("eventList", newEventList);
		return "view_event";
	}
	
	@RequestMapping(value = "/eventjoined/{v_id}/{id}/{name}", method = RequestMethod.GET)
	public String showEventjoinedPage(@PathVariable("id") String e_id,
									  @PathVariable("v_id") String vol_id,
									  @PathVariable("name") String ename,
									  @ModelAttribute("event") Event event,
									  Model model) {
		eventDao.registerVolunteer(Integer.valueOf(vol_id),Integer.valueOf(e_id));
	
		model.addAttribute("id",e_id);
		model.addAttribute("activity",ename);
		return "event_joined";
	}
	
	@RequestMapping(value = "/invitefriend", method = RequestMethod.GET)
	public String inviteFriend(Model model) {
		model.addAttribute("msg", "Your friend has been successfully invited");
		return "event_joined";
	}
	
	// populate events in event view
	@ModelAttribute("activityList")
	public List<String> populateActivity() {

		List<String> activityList = new ArrayList<String>();
		activityList.add("beautifying the nursery");
		activityList.add("greeting cards for 12std students");
		activityList.add("seed ball making on weekend");
		activityList.add("teaching in government school");
		activityList.add("beach clean up");
		activityList.add("planting trees");
		activityList.add("weekend farming");

		return activityList;
	}

}