package com.human.ex;

import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class CompanySecurityController {
	
	private static final Logger logger = LoggerFactory.getLogger(CompanySecurityController.class);
	
	@RequestMapping(value = "/main/main", method = RequestMethod.GET)
	public String member(Locale locale, Model model) {
	
		return "/main/main";
	}
	
}
