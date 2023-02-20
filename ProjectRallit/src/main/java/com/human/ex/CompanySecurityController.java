package com.human.ex;

import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.human.service.IJobPostingInfoService;
import com.human.vo.JobPostingInfoVo;


@Controller
public class CompanySecurityController {
	
	private static final Logger logger = LoggerFactory.getLogger(CompanySecurityController.class);
	@Autowired
	private IJobPostingInfoService jobPostingInfo_Service;
	
	@RequestMapping(value = "/company/info", method = RequestMethod.GET)
	public String member(Locale locale, Model model) {
	
		return "redirect:/main";
	}
	@RequestMapping(value = "/company/jobPosting", method = RequestMethod.GET)
	public String adminJobPostList(Authentication authentication,HttpSession session,Model model) throws Exception {
        List<JobPostingInfoVo> jobPostingInfoVos = jobPostingInfo_Service.selectAll();
		model.addAttribute("list",jobPostingInfoVos);
		return "/company/comJobPostingList";
	}
	
	
	@RequestMapping(value = "/company/comUser", method = RequestMethod.GET)
	public String comInfo(Locale locale, Model model) {
		System.out.println("bbbbbb?Aaa?");
		return "redirect:/info";
	}
	
	
	@RequestMapping(value = "/company/user", method = RequestMethod.GET)
	public String userMain(Locale locale, Model model) {
		System.out.println("aaaA?Aaa?");
		return "redirect:/info";
	}
	
	
	
	
}
