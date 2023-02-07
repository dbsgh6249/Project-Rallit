package com.human.ex;

import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.human.dto.AuthoritiesDto;
import com.human.dto.H_UsersDto;
import com.human.dto.JobPostingDto;
import com.human.service.IAuthoritiesService;
import com.human.service.IH_UsersService;
import com.human.service.IJobPostingInfoService;
import com.human.service.IJobPostingService;
import com.human.service.IPostingTagService;
import com.human.vo.JobPostingInfoVo;

/**
 * Handles requests for the application home page.
 */
@Controller
public class JobPostingController {
	
	private static final Logger logger = LoggerFactory.getLogger(JobPostingController.class);
	@Autowired
	private IJobPostingService jobPosting_Service;
	@Autowired
	private IPostingTagService postingTag_Service;
	@Autowired
	private IJobPostingInfoService jobPostingInfo_Service;
	@Autowired
	private IAuthoritiesService authorities_Service;
	@Autowired
	private IH_UsersService hUsers_Service;
	
	@RequestMapping(value = "/jobPosting/insert", method = RequestMethod.GET)
	public String jobPostingInsert(Model model) throws Exception {
		List<AuthoritiesDto> authoritiesDtos = authorities_Service.selectCompany();
		model.addAttribute("list",authoritiesDtos);
		return "/jobPosting/jobPostingInsert";
	}
	@RequestMapping(value = "/jobPosting/insert", method = RequestMethod.POST)
	public String jobPostingInsert(JobPostingDto dto,Model model) throws Exception {
		System.out.println(dto);
		jobPosting_Service.insert(dto);
		String user_id = dto.getUser_id();
		H_UsersDto hUsersDto = hUsers_Service.selectOne(user_id);
		String userName = hUsersDto.getUser_company();
		String address = hUsersDto.getUser_city() + hUsersDto.getUser_province() + hUsersDto.getUser_address();
		model.addAttribute("company", userName);
		model.addAttribute("address", address);
		model.addAttribute("jobPosting", dto);
		return "/jobPosting/jobPostingDetail";
	}
	@RequestMapping(value = "/jobPosting/update", method = RequestMethod.GET)
	public String jobPostingUpdate() {
		
		return "/jobPosting/update";
	}
	@RequestMapping(value = "/jobPosting/update", method = RequestMethod.POST)
	public String jobPostingUpdate(JobPostingDto dto,RedirectAttributes ra) throws Exception {
		jobPosting_Service.update(dto);
		return "redirect:/jobPosting/selectAll";
	}
	@RequestMapping(value = "/jobPosting/delete", method = RequestMethod.GET)
	public String jobPostingDelete(@RequestParam("posting_num")int posting_num,RedirectAttributes ra) throws Exception{
		postingTag_Service.delete(posting_num);
		jobPosting_Service.delete(posting_num);
		return "redirect:/jobPosting/selectAll";
	}
	@RequestMapping(value = "/jobPosting/selectAll", method = RequestMethod.GET)
	public void jobPostingSelectAll(Model model) throws Exception {
		List<JobPostingInfoVo> jobPostingInfoVos = jobPostingInfo_Service.selectAll();
		model.addAttribute("list",jobPostingInfoVos);
	}
	@RequestMapping(value = "/jobPosting/selectOne", method = RequestMethod.GET)
	public void jobPostingSelectOne(@RequestParam("posting_num")int posting_num,Model model) throws Exception {
		model.addAttribute("dto",jobPostingInfo_Service.selectOne(posting_num));
	}
	@RequestMapping(value = "/jobPosting/selectCompanyPosting", method = RequestMethod.GET)
	public void jobPostingSelectCompanyPosting(String user_id,Model model) throws Exception {
		model.addAttribute("list",jobPosting_Service.selectCompanyPosting(user_id));
		// 이것도 태그 있는 거로 바꿀까 했는데 기업 마이페이지에서 전체조회는 제목/경력/마감일 정도만 표기할 것 같아서 따로 join 안 만들 듯
	}
	
}
