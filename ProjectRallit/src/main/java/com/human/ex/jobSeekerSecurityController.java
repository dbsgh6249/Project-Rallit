package com.human.ex;

import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class jobSeekerSecurityController {
	
	private static final Logger logger = LoggerFactory.getLogger(jobSeekerSecurityController.class);
	

	@RequestMapping(value = "/jobSeeker/user", method = RequestMethod.GET)
	public String user(Locale locale, Model model) {
		System.out.println("aaa?");
		return "redirect:/main";
	}
	
	@RequestMapping(value = "/jobSeeker/error", method = RequestMethod.GET)
	public String userError(Locale locale, Model model) {
		return "/main/error";
	}
	@RequestMapping(value = "/main/login", method = RequestMethod.GET)
	public String userLogin(Locale locale, Model model) {
		return "/main/login";
	}
}
