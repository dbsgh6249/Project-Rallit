package com.human.ex;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.human.dto.JobSeekerDto;
import com.human.service.IJobSeekerService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class JobSeekerController {
	
	@Autowired
	private IJobSeekerService service;
	
	private static final Logger logger = LoggerFactory.getLogger(JobSeekerController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "redirect:/selectAll";
	}
	
	//####은 추후 수정
	@RequestMapping(value = "/insert##############", method = RequestMethod.GET)
	//insert 페이지로이동
	public String insert() {
		return "/insert#########";
	}
	@RequestMapping(value = "/insert##############", method = RequestMethod.POST)
	//insert 페이지에서 DB작업후
	public String insertDB(JobSeekerDto dto,RedirectAttributes ra) throws Exception {
		service.insert(dto);
		ra.addFlashAttribute("msg","success");
		return "redirect:/selectAll";
	}
	@RequestMapping(value = "/update##############", method = RequestMethod.GET)
	//update 페이지로이동
	public String update() {
		return "/update#########";
	}
	@RequestMapping(value = "/update##############", method = RequestMethod.POST)
	//update 페이지에서 작업후
	public String updateDB(JobSeekerDto dto,RedirectAttributes ra) throws Exception {
		service.update(dto);
		ra.addFlashAttribute("msg", "success");
		return "redirect:/selectAll";
	}
	@RequestMapping(value = "/delete", method = RequestMethod.GET)
	//회원탈퇴 버튼 누를시
	public String delete(String id,RedirectAttributes ra) throws Exception {
		service.delete(id);
		ra.addFlashAttribute("msg","success");
		return "redirect:/selectAll";
	}
	
	@RequestMapping(value = "/select", method = RequestMethod.GET)
	//자신의 회원정보 출력화면
	public String selectName(String id,Model model) throws Exception {
		model.addAttribute("dto", service.select(id) );
		return "/select###################";
	}
	
	@RequestMapping(value = "/selectAll", method = RequestMethod.GET)
	//관리자가 모든 회원정보 열람
	public String selectAll(Model model) throws Exception {
		model.addAttribute("list", service.selectAll() );
		return "/selectAll#############";
	}
}
