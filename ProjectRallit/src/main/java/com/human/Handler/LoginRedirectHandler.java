package com.human.Handler;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;

import com.human.service.IH_UsersService;

public class LoginRedirectHandler implements AuthenticationSuccessHandler {

	@Autowired
	private IH_UsersService users_service;
	
	@Override
	public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response,
			Authentication authentication) throws IOException, ServletException {
		SecurityContextHolder.getContext().setAuthentication(authentication);
		UsernamePasswordAuthenticationToken token1 = (UsernamePasswordAuthenticationToken)authentication;
        String user_id = token1.getName();
		// 로그인에 성공하면 이동하는 페이지
		List<String> roleNames=new ArrayList<String>();
		//권한들 읽어오기(로그인한 사람의)/roleNames에 추가
		HttpSession session = request.getSession();
		System.out.println(session);
		authentication.getAuthorities().forEach(authority ->{
			roleNames.add(authority.getAuthority());
			System.out.println("==role.authority=="+authority.getAuthority());
			String username = null;
			try {
				username = users_service.selectOne(user_id).getUser_name();
			} catch (Exception e) {
				e.printStackTrace();
			}
			
			session.setAttribute("user_login", user_id);
			session.setAttribute("user_autho", authority.getAuthority());
			session.setAttribute("username", username);
			System.out.println(session.getAttribute("user_login"));
			System.out.println(session.getAttribute("user_autho"));
		});
		
		//권한에 따라 페이지 이동
		if(roleNames.contains("ROLE_ADMIN")) {
	         System.out.println("check : " + session.getAttribute("user_autho"));
			response.sendRedirect("/ex/admin/user");
			return;
		}
		if(roleNames.contains("ROLE_COMPANY")) {
			response.sendRedirect("/ex/company/user");
			return;
		}
		if(roleNames.contains("ROLE_SEEKER")) {
			response.sendRedirect("/ex/jobSeeker/user");
			return;
		}
	}

}
