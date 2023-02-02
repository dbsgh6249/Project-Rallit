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

import com.human.dto.AuthoritiesDto;
import com.human.dto.H_UsersDto;
import com.human.service.IAuthoritiesService;
import com.human.service.IH_UsersService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class DBUsersController {
	
	private static final Logger logger = LoggerFactory.getLogger(DBUsersController.class);
	@Autowired
	private IH_UsersService user_service;
	private IAuthoritiesService authorities_service;
	
	
	@RequestMapping(value = "/seeker/register", method = RequestMethod.POST)
	public String testsingup(H_UsersDto dto) throws Exception {
		System.out.println(dto);
		System.out.println("insert befor");
		
		user_service.insert(dto);
		System.out.println("insert after");
		
		AuthoritiesDto authoritiesDto = new AuthoritiesDto(); // 권한 설정 확인용
		authoritiesDto.setUser_id(dto.getUser_id());
		authoritiesDto.setAuthority("ROLE_SEEKER");
		authorities_service.insertSeeker(authoritiesDto);
		
		return "/jobSeeker/login";
	}
	
}
