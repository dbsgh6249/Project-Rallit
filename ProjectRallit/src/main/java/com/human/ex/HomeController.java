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
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	@Autowired
	private IH_UsersService user_service;
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "/main/main";
	}
	@RequestMapping(value = "/temporary/register", method = RequestMethod.GET)
	public String testregister(Locale locale, Model model) {
		return "/temporary/register";
	}
	
	@RequestMapping(value = "/temporary/register", method = RequestMethod.POST)
	public String testsingup(H_UsersDto dto) throws Exception {
		System.out.println(dto);
		System.out.println("insert befor");
		user_service.insert(dto);
		System.out.println("insert after");
		return "/userSelect";
	}
	
	@RequestMapping(value = "/userSelect", method = RequestMethod.GET)
	public String testUserSelect(Model model) throws Exception {
		model.addAttribute("list",user_service.selectAll());
		return "/temporary/userSelect";
	}
	
	
}
