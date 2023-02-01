package com.human.ex;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.human.dto.JobSeekerDto;
import com.human.service.IJobSeekerService;

/**
 * Handles requests for the application home page.
 */
@Controller
@RequestMapping("/jobSeeker/*")
public class JobSeekerController {
	
	@Autowired
	private IJobSeekerService jobSeekerservice;
	
	private static final Logger logger = LoggerFactory.getLogger(JobSeekerController.class);
	
	@RequestMapping(value = "/insert", method = RequestMethod.GET)
	//insert 페이지로이동
	public String insert() {
		return "/jobSeeker/insert";
	}
	@RequestMapping(value = "/insert", method = RequestMethod.POST)
	//insert 페이지에서 DB작업후
	public String insertDB(JobSeekerDto dto) throws Exception {
		jobSeekerservice.insert(dto);
		return "redirect:/jobSeeker/selectAll";
	}
	@RequestMapping(value = "/update", method = RequestMethod.GET)
	//update 페이지로이동
	public String update(@ModelAttribute("dto") JobSeekerDto dto) {
		return "/jobSeeker/update";
	}
	@RequestMapping(value = "/update", method = RequestMethod.POST)
	//update 페이지에서 작업후
	public String updateDB(JobSeekerDto dto) throws Exception {
		jobSeekerservice.update(dto);
		return "redirect:/jobSeeker/selectAll";
	}
	@RequestMapping(value = "/delete", method = RequestMethod.GET)
	//회원탈퇴 버튼 누를시
	public String delete(String seeker_id,RedirectAttributes ra) throws Exception {
		jobSeekerservice.delete(seeker_id);
		ra.addFlashAttribute("msg","success");
		return "redirect:/jobSeeker/selectAll";
	}	
	@RequestMapping(value = "/select", method = RequestMethod.GET)
	//자신의 회원정보 출력화면
	public String selectName(String seeker_id,Model model) throws Exception {
		model.addAttribute("dto", jobSeekerservice.select(seeker_id) );
		return "/jobSeeker/select";
	}	
	@RequestMapping(value = "/selectAll", method = RequestMethod.GET)
	//관리자가 모든 회원정보 열람
	public String selectAll(Model model) throws Exception {
		model.addAttribute("list", jobSeekerservice.selectAll() );
		return "/jobSeeker/selectAll";
	}
}
