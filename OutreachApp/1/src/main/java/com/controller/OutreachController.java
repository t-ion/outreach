package com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.view.RedirectView;

import com.model.Admin;
import com.model.Volunteer;
import com.service.AdminDao;
import com.service.VolunteerDao;

@Controller
public class OutreachController {
	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public String showPage() {
		
		return "home";
	}
		
	@Autowired
	private AdminDao adminDao;

///////////   -----   Admin Get Methods  ------   ////////////////////

	@RequestMapping(value = "/adminHome", method = RequestMethod.GET)
	public String showAdminHomePage() {

		return "adminHome";
	}

	@RequestMapping(value = "/adminLogin", method = RequestMethod.GET)
	public String performVolunteerLogin(@ModelAttribute("admin") Admin admin) {

		return "adminLogin";
	}
	
	

	@RequestMapping(value = "/adminRegistration", method = RequestMethod.GET)
	public String performVolunteerRegistration(@ModelAttribute("admin") Admin admin) {

		return "adminRegistration";
	}

/////// ----    Admin Post Methods ---- //////////

	@RequestMapping(value = "/registerAdmin", method = RequestMethod.POST)
	public String registerPageAdmin(@ModelAttribute("admin1") Admin admin1, BindingResult result, ModelMap model) {

		if (result.hasErrors()) {
			return "adminRegistration";
		}

		adminDao.createAdmin(admin1);
		model.addAttribute("msg", "Admin registration successful.");

		return "adminHome";
	}

	@RequestMapping(value = "/loginAdmin", method = RequestMethod.POST)
	public String loginPageAdmin(@ModelAttribute("admin") Admin admin, BindingResult result, ModelMap model) {

		if (result.hasErrors()) {
			return "adminLogin";
		}
		if ( adminDao.readAdmin( admin.getAdminId())) {
			model.addAttribute("aId",admin.getAdminId());
				return "adminDashboard";
			}
		return "adminLogin";

	}

	@Autowired
	private VolunteerDao volunteerDao;
	
	///////////   -----   Volunteer Get Methods  ------   ////////////////////
	@RequestMapping(value = "/volunteerHome", method = RequestMethod.GET)
	public String showAdminPage(@ModelAttribute("volunteer") Volunteer volunteer) {
		volunteer = new Volunteer();

		return "volunteerHome";
	}

	@RequestMapping(value = "/volunteerLogin", method = RequestMethod.GET)
	public String performLogin(@ModelAttribute("volunteer") Volunteer volunteer) {

		return "volunteerLogin";
	}

	@RequestMapping(value = "/volunteerRegistration", method = RequestMethod.GET)
	public String performRegistration(@ModelAttribute("volunteer") Volunteer volunteer) {

		return "volunteerRegistration";
	}

	
	/////// ----    Volunteer Post Methods ---- //////////
	
	@RequestMapping(value = "/registerVolunteer", method = RequestMethod.POST)
	public String registerPageVolunteer(@ModelAttribute("volunteer") Volunteer user, BindingResult result, ModelMap model) {

		if (result.hasErrors()) {
			return "volunteerRegistration";
		}

		volunteerDao.createVolunteer(user);
		model.addAttribute("msg", "Volunteer registration successful.");

		return "volunteerHome";
	}

	@RequestMapping(value = "/loginVolunteer", method = RequestMethod.POST)
	public String loginPageVolunteer(@ModelAttribute("volunteer") Volunteer user, BindingResult result, ModelMap model) {

		if (result.hasErrors()) {
			return "volunteerLogin";
		}

		List<Volunteer> listVolunteer = volunteerDao.readVolunteer();

		for (Volunteer user2 : listVolunteer) {
			if (user2.getVolunteerId().equals(user.getVolunteerId()) && user2.getPassword().equals(user.getPassword())) {
				model.addAttribute("id",user.getVolunteerId());
				model.addAttribute("wah",user2.getWahPoints());
				return "volunteerDashboard";
			}
		}
		return "volunteerLogin";

	}


}
