package com.human.ex;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.human.dto.H_UsersDto;
import com.human.service.IH_UsersService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class UsersController {
	
	private static final Logger logger = LoggerFactory.getLogger(UsersController.class);
	@Autowired
	private IH_UsersService user_service;
	
	
	@RequestMapping(value = "/jobSeeker/register", method = RequestMethod.GET)
	public String testregister(Locale locale, Model model) {
		return "/temporary/register";
	}
	@RequestMapping(value = "/jpd", method = RequestMethod.GET)
	public String jpd(Model model) {
		
		return "jobPosting/jobPostingDetail";
	}
	
	@RequestMapping(value = "/temporary/register", method = RequestMethod.POST)
	public String testsingup(H_UsersDto dto) throws Exception {
		System.out.println(dto);
		System.out.println("insert befor");
		user_service.insert(dto);
		System.out.println("insert after");
		return "/main/main";
	}
	
	
}
