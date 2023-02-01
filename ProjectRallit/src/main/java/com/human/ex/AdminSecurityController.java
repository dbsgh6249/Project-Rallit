package com.human.ex;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class AdminSecurityController {
	
	private static final Logger logger = LoggerFactory.getLogger(AdminSecurityController.class);
	
	@RequestMapping(value = "/admin/holdstate", method = RequestMethod.GET)
	public String admin() {

		return "/admin/holdstate";
	}
	
}