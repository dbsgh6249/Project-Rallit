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
	@Autowired
	private IAuthoritiesService authorities_service;
	
	
	@RequestMapping(value = "/seeker/register", method = RequestMethod.POST)
	public String seekersingup(H_UsersDto dto) throws Exception {
//		user_info insert
		System.out.println(dto);
		user_service.insert(dto);
//		user_authorities insert
		AuthoritiesDto authoritiesDto = new AuthoritiesDto(); // 권한 설정 확인용
		
		System.out.println(dto.getUser_id());
		authoritiesDto.setUser_id(dto.getUser_id());
		
		authoritiesDto.setAuthority("ROLE_SEEKER");
		System.out.println(authoritiesDto);
		
		authorities_service.insertSeeker(authoritiesDto);
		
		return "/jobSeeker/login";
	}
	
}
