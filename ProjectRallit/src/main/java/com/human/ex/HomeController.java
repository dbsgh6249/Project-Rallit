package com.human.ex;

import java.text.DateFormat;
import java.util.Date;
import java.util.List;
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
import com.human.service.IJobPostingInfoService;
import com.human.service.IJobPostingService;
import com.human.vo.JobPostingInfoVo;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	@Autowired
	private IH_UsersService user_service;
	@Autowired
	private IJobPostingInfoService jobPostingInfo_Service;
	@Autowired
	private IJobPostingService jobPosting_Service;
	/**
	 * Simply selects the home view to render by returning its name.
	 * @throws Exception 
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) throws Exception {
		System.out.println("home controller");

		return "redirect:/jobPosting/selectAll";
	}
	
	@RequestMapping(value = "/jobPosting/selectAll", method = RequestMethod.GET)
	public String jobPostingSelectAll(Model model) throws Exception {
		System.out.println("jobPostingController");
		List<JobPostingInfoVo> jobPostingInfoVos = jobPostingInfo_Service.selectAll();
		List<String> jobGroups = jobPosting_Service.selectJobGroup();
		model.addAttribute("list",jobPostingInfoVos);
		model.addAttribute("jobGroup", jobGroups);
		return "/main/main";
	}

	
	//test용
	@RequestMapping(value = "/jpd", method = RequestMethod.GET)
	public String jpd(Model model) {
		
		return "jobPosting/jobPostingDetail";
	}
	//test용
	@RequestMapping(value = "/jps", method = RequestMethod.GET)
	public String jps(Model model) {
		
		return "jobPosting/jobPostingSelect";
	}
	//test용
	@RequestMapping(value = "/info", method = RequestMethod.GET)
	public String myInfo(Model model) {
		
		return "jobSeeker/userMyInfo";
	}
	//test용
	@RequestMapping(value = "/infoDel", method = RequestMethod.GET)
	public String infoDelete(Model model) {
		
		return "jobSeeker/userDeleteAccount";
	}
	//test용
		@RequestMapping(value = "/infoUp", method = RequestMethod.GET)
		public String infoUpdate(Model model) {
			
			return "jobSeeker/userUpdateAccount";
		}
}
