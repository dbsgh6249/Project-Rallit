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
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.human.dto.H_UsersDto;
import com.human.dto.JobPostingDto;
import com.human.dto.PostingTagDto;
import com.human.service.IH_UsersService;
import com.human.service.IJobPostingInfoService;
import com.human.service.IJobPostingService;
import com.human.service.IPostingTagService;
import com.human.vo.JobPostingInfoVo;


@Controller
public class AdminSecurityController {
	
	@Autowired
	private IJobPostingInfoService jobPostingInfo_Service;
	@Autowired
	private IH_UsersService user_service;
	@Autowired
	private IJobPostingService jobPosting_service;
	@Autowired
	private IPostingTagService tag_service;
	
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
		return "/admin/jobPostingUpdate";
	}
	@RequestMapping(value = "/admin/updateJobPosting", method = RequestMethod.POST)
	public String updateJobPosting(JobPostingDto dto, Model model, PostingTagDto p_tag,
			JobPostingInfoVo vo) 
			throws Exception {
		p_tag.setPosting_num(dto.getPosting_num());
		tag_service.delete(dto.getPosting_num());
		if(vo.getLanguageTags() != null) {
			for(String tag : vo.getLanguageTags()) {
				if(tag.equals("")) {
					continue;
				}
				else {
					PostingTagDto tDto = new PostingTagDto();
					tDto.setPosting_num(vo.getPosting_num());
					tDto.setLanguageTag(tag);
					tag_service.insert(tDto);
				}
			}
		}
		jobPosting_service.update(dto);
		model.addAttribute("jobPosting",jobPostingInfo_Service.selectOne(dto.getPosting_num()));
		return "/jobPosting/jobPostingDetail";
	}
	
	@RequestMapping(value = "/admin/seekerList", method = RequestMethod.GET)
	public String seekerList(Model model) throws Exception {
		System.out.println("ROLE_SEEKER 목록 조회");
		List<H_UsersDto> seekerList = user_service.selectJobSeeker();
		model.addAttribute("list", seekerList);
		return "/admin/jobSeekerList";
	}
	
	@RequestMapping(value = "/admin/companyList", method = RequestMethod.GET)
	public String companyList(Model model) throws Exception {
		System.out.println("ROLE_COMPANY 목록 조회");
		List<H_UsersDto> companyList = user_service.selectCompany();
		model.addAttribute("list", companyList);
		return "/admin/companyList";
	}
	@RequestMapping(value = "/admin/jobPostingInsert", method = RequestMethod.GET)
	public String jobPostingInsert(Model model) throws Exception {
		List<H_UsersDto> hUsersDtos = user_service.selectCompany();
		model.addAttribute("list",hUsersDtos);
		return "/admin/jobPostingInsert";
	}
	@RequestMapping(value = "/admin/insert", method = RequestMethod.POST)
	public String jobPostingInsert(JobPostingDto dto,JobPostingInfoVo vo, Model model) throws Exception {
		jobPostingInfo_Service.insertJobPostingInfo(dto, vo);
		String user_id = dto.getUser_id();
		H_UsersDto hUsersDto = user_service.selectOne(user_id);
		String address = vo.getAddress()+" "+hUsersDto.getUser_address();
		model.addAttribute("address", address);
		model.addAttribute("jobPosting", vo);
		return "/jobPosting/jobPostingDetail";
	}
	
	@RequestMapping(value = "/admin/deleteJobPosting",method = RequestMethod.GET)
	public String jobPostingDelete(@RequestParam("posting_num")int posting_num,RedirectAttributes ra) throws Exception{
		tag_service.delete(posting_num);
		jobPosting_service.delete(posting_num);
		return "redirect:/main";
	}
	
}
