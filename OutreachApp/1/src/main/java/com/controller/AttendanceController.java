package com.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.model.Event;
import com.model.Volunteer;
import com.model.WrapAttendance;
import com.service.EventDAO;
import com.service.VolunteerDao;

@Controller
public class AttendanceController {
	
	@Autowired
	private VolunteerDao volunteerDao;
	
	@Autowired
	private EventDAO eventDao;
	
	@RequestMapping(value = "/attendance/{eId}/{aId}", method = RequestMethod.GET)
	public ModelAndView showAttendancePage(@PathVariable("eId") String e_id,
										   @PathVariable("aId") String a_id) {
		
		WrapAttendance attendance = new WrapAttendance();
		List<Volunteer> list= volunteerDao.readRegVolunteer(Integer.valueOf(a_id),Integer.valueOf(e_id));
		 
		ModelAndView modelAndView = new ModelAndView("attendance", "command", attendance);
		modelAndView.addObject("volunteerList", list);
		modelAndView.addObject("eId",e_id);
		modelAndView.addObject("aId",a_id);
		return modelAndView;
	}

	@RequestMapping(value = "/attendancesubmit/{eId}", method = RequestMethod.POST)
	public String submitAttendance(@PathVariable("eId") String e_id,
								   @ModelAttribute("SpringWeb") WrapAttendance attlist, ModelMap model) {
		
		List<String> list = attlist.getPresentList();
		for (String s : list) {
			System.out.println(s);
			eventDao.volunteerAttended(Integer.valueOf(s),Integer.valueOf(e_id));
		}
		
		return "success";
	}
	
	/* donation admin*/
	@RequestMapping(value = "/donateadmin")
	public String donationbyadmin() {
		
		return "volunteerdonate";
	}
	@RequestMapping(value = "/adminTranscation")
	public String transactionPageadmin() {
		
		return "discountTranscation";
	}
	@RequestMapping(value = "/successadmin")
	public String transactionPage(Model model) {
		model.addAttribute("msg","Successfully donated");
		return "discountTranscation";
	}
	
	/* donation volunteer*/
	@RequestMapping(value = "/donateVol")
	public String donationbyvol() {
		
		return "volunteerdonate";
	}
	@RequestMapping(value = "/discountTranscation")
	public String transactionPage() {
		
		return "discountTranscation";
	}
	@RequestMapping(value = "/success")
	public String aftertransactionPage(Model model) {
		model.addAttribute("msg","Successfully donated");
		return "discountTranscation";
	}
}
