package com.human.ex;

import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

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
		System.out.println("프로젝트 실행");

		return "redirect:/main";
	}
	
	@RequestMapping(value = "/main", method = RequestMethod.GET)
	public String jobPostingSelectAll(Model model) throws Exception {
		System.out.println("메인 페이지로 이동");
		List<JobPostingInfoVo> jobPostingInfoVos = jobPostingInfo_Service.selectPostingMain();
		List<String> jobGroups = jobPosting_Service.selectJobGroup();
		model.addAttribute("list",jobPostingInfoVos);
		model.addAttribute("jobGroup", jobGroups);
		return "/main/main";
	}


	// 메인페이지에서 전체보기 or 채용공고 누르면 이동
	@RequestMapping(value = "/jobPostList", method = RequestMethod.GET)
	public String jps(Model model) throws Exception {
		System.out.println("채용공고 페이지");
		List<JobPostingInfoVo> jobPostingInfoVos = jobPostingInfo_Service.selectAll();
		model.addAttribute("list",jobPostingInfoVos);
		return "jobPosting/jobPostingSelect";
	}
	
	@RequestMapping(value = "/resume", method = RequestMethod.GET)
	public String resume(Model model){
		System.out.println("이력서 로그인");
		
		return "/main/resume";
	}
	//test용
	@RequestMapping(value = "/readPost", method = RequestMethod.GET)
	public String jpd(@RequestParam("posting_num") Integer posting_num, Model model) throws Exception {

		System.out.println(posting_num);
		JobPostingInfoVo vo = jobPostingInfo_Service.selectOne(posting_num);
		jobPosting_Service.updateJobGroupVcnt(vo.getOcc_sub());
		jobPosting_Service.viewUpdate(posting_num);
		String user_id = vo.getUser_id();
		H_UsersDto hUsersDto = user_service.selectOne(user_id);
		String address = hUsersDto.getUser_province()+" "+hUsersDto.getUser_city()+" "+hUsersDto.getUser_address();
		model.addAttribute("address", address);
		model.addAttribute("jobPosting", vo);
		return "jobPosting/jobPostingDetail";
	}

	@RequestMapping(value = "/jpu", method = RequestMethod.GET)
	public String jobPostingUpdate(@RequestParam("posting_num") Integer posting_num, Model model) throws Exception{
		model.addAttribute("dto", jobPosting_Service.selectOne(posting_num));
		return "admin/jobPostingUpdate";
	}
	
	@RequestMapping(value = "/info", method = RequestMethod.GET)
	public String myInfo(HttpServletRequest request, Model model) {
		HttpSession session = request.getSession();
		if(session.getAttribute("user_autho").equals("ROLE_COMPANY")) {
			return "company/comUser";
		}else {
			return "jobSeeker/userMyInfo";
		}
	}

	//test용
	@RequestMapping(value = "/infoUp", method = RequestMethod.GET)
	public String infoUpdate(HttpServletRequest request, Model model) throws Exception {
		HttpSession session = request.getSession();
		model.addAttribute("user", user_service.selectOne((String)session.getAttribute("user_login")));
		if(session.getAttribute("user_autho").equals("ROLE_COMPANY")) {
			return "company/comUserUpdateAccount";
		}else {
			return "jobSeeker/userUpdateAccount";
		}	
	}
	@RequestMapping(value = "/infoUp", method = RequestMethod.POST)
	public String updateDB(H_UsersDto dto, HttpServletRequest request) throws Exception {
		System.out.println(dto);
		HttpSession session = request.getSession();
		dto.setUser_id((String)session.getAttribute("user_login"));
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
//			user_info insert
		System.out.println(dto);
		user_service.update(dto);
		System.out.println("1");
		return "redirect:/info";
	}		
	
	@RequestMapping(value = "/infoView", method = RequestMethod.GET)
	public String infoView(HttpServletRequest request, Model model) throws Exception {
		HttpSession session = request.getSession();
		model.addAttribute("user", user_service.selectOne((String)session.getAttribute("user_login")));
		if(session.getAttribute("user_autho").equals("ROLE_COMPANY")) {			
			return "company/comUserViewMyInfo";
		}else {
			return "jobSeeker/userViewMyInfo";
		}					
	}
	
	@RequestMapping(value = "/privacy", method = RequestMethod.GET)
	public String privacy(Model model){
		System.out.println("개인정보 처리 방침 표시");
		return "/otherFooter/privacyPolicy";
	}
	@RequestMapping(value = "/service", method = RequestMethod.GET)
	public String service(Model model){
		System.out.println("이용약관 표시");
		return "/otherFooter/termsOfService";
	}
				
}