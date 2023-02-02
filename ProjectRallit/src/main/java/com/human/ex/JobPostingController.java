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
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.human.dto.H_UsersDto;
import com.human.dto.JobPostingDto;
import com.human.service.IH_UsersService;
import com.human.service.IJobPostingService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class JobPostingController {
	
	private static final Logger logger = LoggerFactory.getLogger(JobPostingController.class);
	@Autowired
	private IJobPostingService jobPosting_Service;
	
	
	@RequestMapping(value = "/jobPosting/insert", method = RequestMethod.GET)
	public String jobPostingInsert() {
		
		return "/jobPosting/insert";
	}
	@RequestMapping(value = "/jobPosting/insert", method = RequestMethod.POST)
	public String jobPostingInsertDB(JobPostingDto dto,RedirectAttributes ra) throws Exception {
		jobPosting_Service.insert(dto);
		ra.addFlashAttribute("msg","success");
		return "redirect:/jobPosting/selectAll";
	}
	@RequestMapping(value = "/jobPosting/update", method = RequestMethod.GET)
	public String jobPostingUpdate() {
		
		return "/jobPosting/update";
	}
	@RequestMapping(value = "/jobPosting/update", method = RequestMethod.POST)
	public String jobPostingUpdateDB(JobPostingDto dto,RedirectAttributes ra) throws Exception {
		jobPosting_Service.update(dto);
		ra.addFlashAttribute("msg","success");
		return "redirect:/jobPosting/selectAll";
	}
	@RequestMapping(value = "/jobPosting/delete", method = RequestMethod.GET)
	public String jobPostingDelete(String posting_num,RedirectAttributes ra) throws Exception{
		jobPosting_Service.delete(posting_num);
		ra.addFlashAttribute("msg","success");
		return "redirect:/jobPosting/selectAll";
	}
	@RequestMapping(value = "/jobPosting/selectAll", method = RequestMethod.GET)
	public String jobPostingSelectAll(Model model) throws Exception {
		model.addAttribute("list",jobPosting_Service.selectAll());
		return "/jobPosting/selectAll";
	}
	@RequestMapping(value = "/jobPosting/selectOne", method = RequestMethod.GET)
	public String jobPostingSelectOne(String posting_num,Model model) throws Exception {
		model.addAttribute("dto",jobPosting_Service.selectOne(posting_num));
		return "/jobPosting/selectOne";
	}
	@RequestMapping(value = "/jobPosting/selectCompanyPosting", method = RequestMethod.GET)
	public String jobPostingSelectAll(String user_id,Model model) throws Exception {
		model.addAttribute("list",jobPosting_Service.selectCompanyPosting(user_id));
		
		return "/jobPosting/selectCompanyPosting";
	}//6
	
}
