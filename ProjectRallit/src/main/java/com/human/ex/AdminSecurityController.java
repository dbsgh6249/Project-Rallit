package com.human.ex;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.human.dto.H_UsersDto;
import com.human.service.IH_UsersService;
import com.human.service.IJobPostingInfoService;
import com.human.vo.JobPostingInfoVo;


@Controller
public class AdminSecurityController {
	
	@Autowired
	private IJobPostingInfoService jobPostingInfo_Service;
	@Autowired
	private IH_UsersService user_service;
	
	private static final Logger logger = LoggerFactory.getLogger(AdminSecurityController.class);
	
	
	@RequestMapping(value = "/admin/user", method = RequestMethod.GET)
	public String admin(Authentication authentication,HttpSession session) {
        System.out.println("AdminController 값  : " + session.getAttribute("user_login"));
        System.out.println("세션 : " + session.getId());
        
		return "/admin/user";
	}
	@RequestMapping(value = "/admin/jobPosting", method = RequestMethod.GET)
	public String adminJobPostList(Authentication authentication,HttpSession session,Model model) throws Exception {
        List<JobPostingInfoVo> jobPostingInfoVos = jobPostingInfo_Service.selectAll();
		model.addAttribute("list",jobPostingInfoVos);
		return "/admin/jobPostingList";
	}
	@RequestMapping(value = "/admin/updateJobPosting", method = RequestMethod.GET)
	public String updatePosting(@RequestParam("posting_num")int posting_num, Model model) throws Exception {
		model.addAttribute("jobPosting",jobPostingInfo_Service.selectOne(posting_num));
		return "/admin/updateJobPosting";
	}// 태그 업데이트를 어디서 할 지가 고민... 한번에 다 받아서 처리가 가능할 것 같지 않음
	
	@RequestMapping(value = "/admin/seekerList", method = RequestMethod.GET)
	public String seekerList(Model model) throws Exception {
		System.out.println("ROLE_SEEKER 목록 조회");
		List<H_UsersDto> seekerList = user_service.selectJobSeeker();
		model.addAttribute("list", seekerList);
		return "/admin/jobSeekerList";
	}
	
	@RequestMapping(value = "admin/companyList", method = RequestMethod.GET)
	public String companyList(Model model) throws Exception {
		System.out.println("ROLE_COMPANY 목록 조회");
		List<H_UsersDto> companyList = user_service.selectCompany();
		model.addAttribute("list", companyList);
		return "/admin/companyList";
	}

	
}
