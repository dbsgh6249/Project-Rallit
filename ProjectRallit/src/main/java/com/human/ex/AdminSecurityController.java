package com.human.ex;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class AdminSecurityController {
	
	private static final Logger logger = LoggerFactory.getLogger(AdminSecurityController.class);
	
	@RequestMapping(value = "/admin/user", method = RequestMethod.GET)
	public String admin(Authentication authentication,HttpSession session) {
		SecurityContextHolder.getContext().setAuthentication(authentication);
		UsernamePasswordAuthenticationToken token = (UsernamePasswordAuthenticationToken)authentication;
        String id = token.getName();
        
        System.out.println("AdminController 값  : " + id);
        System.out.println("세션 : " + session.getId());
        session.setAttribute("user_login", session.getId());
        
		return "/main/main";
	}
	
}
