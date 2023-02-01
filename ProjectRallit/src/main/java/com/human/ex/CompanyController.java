package com.human.ex;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.human.dto.CompanyDto;
import com.human.service.ICompanyService;

/**
 * Handles requests for the application home page.
 */
@Controller
@RequestMapping("/company/*")
public class CompanyController {
	
	@Autowired
	private ICompanyService Companyservice;
	
	//리다이렉트페이지 추후 view 작성 후 수정
	@RequestMapping(value = "/insert", method = RequestMethod.GET)
	//insert 페이지로이동
	public String insert() {
		return "/company/insert";
	}
	@RequestMapping(value = "/insert", method = RequestMethod.POST)
	//insert 페이지에서 DB작업후
	public String insertDB(CompanyDto dto,RedirectAttributes ra) throws Exception {
		Companyservice.insert(dto);
		ra.addFlashAttribute("msg","success");
		return "redirect:/company/selectAll";
	}
	@RequestMapping(value = "/update", method = RequestMethod.GET)
	//update 페이지로이동
	public String update(@ModelAttribute("dto") CompanyDto dto) {
		return "/company/update";
	}
	@RequestMapping(value = "/update", method = RequestMethod.POST)
	//update 페이지에서 작업후
	public String updateDB(CompanyDto dto) throws Exception {
		Companyservice.update(dto);
		return "redirect:/company/selectAll";
	}
	@RequestMapping(value = "/delete", method = RequestMethod.GET)
	//회원탈퇴 버튼 누를시
	public String delete(String company_id,RedirectAttributes ra) throws Exception {
		Companyservice.delete(company_id);
		ra.addFlashAttribute("msg","success");
		return "redirect:/jobSeeker/selectAll"; // 기업회원 탈퇴 시 일반유저 페이지로 이동
	}
	
	@RequestMapping(value = "/select", method = RequestMethod.GET)
	//자신의 회원정보 출력화면
	public String selectName(String company_id,Model model) throws Exception {
		model.addAttribute("dto", Companyservice.select(company_id) );
		return "/company/select";
	}
	
	@RequestMapping(value = "/selectAll", method = RequestMethod.GET)
	//관리자가 모든 회원정보 열람
	public String selectAll(Model model) throws Exception {
		model.addAttribute("list", Companyservice.selectAll() );
		return "/company/selectAll";
	}
}
