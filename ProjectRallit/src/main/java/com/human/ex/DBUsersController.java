package com.human.ex;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
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
	public String seekersingup(H_UsersDto dto, HttpServletRequest request) throws Exception {
		String full = request.getParameter("full_address");
		String[] list = full.split(" ");
		String temp = "";
		for(int i = 0; i < list.length ; i++) {
			System.out.println(list[i]);
			if(i>=2) {
				temp += list[i]+" ";
			}
		}
		dto.setUser_province(list[0]);
		dto.setUser_city(list[1]);
		temp += dto.getUser_address();
		dto.setUser_address(temp);
		
		System.out.println("dto 수정 값 : " + (String)dto.getUser_address());
//		user_info insert
		System.out.println(dto);
		user_service.insert(dto,request);
//		user_authorities insert
		AuthoritiesDto authoritiesDto = new AuthoritiesDto(); // 권한 설정 확인용
		
		System.out.println(dto.getUser_id());
		authoritiesDto.setUser_id(dto.getUser_id());
		
		authoritiesDto.setAuthority("ROLE_SEEKER");
		System.out.println(authoritiesDto);
		
		authorities_service.insertSeeker(authoritiesDto);
		
		return "/jobSeeker/login";
	}
	@RequestMapping(value = "/company/register", method = RequestMethod.POST)
	public String companySignUp(H_UsersDto dto, HttpServletRequest request) throws Exception {
		String full = request.getParameter("full_address");
		String[] list = full.split(" ");
		String temp = "";
		for(int i = 0; i < list.length ; i++) {
			System.out.println(list[i]);
			if(i>=2) {
				temp += list[i]+" ";
			}
		}
		dto.setUser_province(list[0]);
		dto.setUser_city(list[1]);
		temp += dto.getUser_address();
		dto.setUser_address(temp);
		
		System.out.println("dto 수정 값 : " + (String)dto.getUser_address());
//		user_info insert
		System.out.println(dto);
		user_service.insert(dto,request);
//		user_authorities insert
		AuthoritiesDto authoritiesDto = new AuthoritiesDto(); // 권한 설정 확인용
		
		System.out.println(dto.getUser_id());
		authoritiesDto.setUser_id(dto.getUser_id());
		
		authoritiesDto.setAuthority("ROLE_COMPANY");
		System.out.println(authoritiesDto);
		
		authorities_service.insertCompany(authoritiesDto);
		
		return "/company/login";
	}
}
