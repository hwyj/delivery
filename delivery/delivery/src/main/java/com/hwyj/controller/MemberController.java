package com.hwyj.controller;

import java.util.Locale;

import org.springframework.security.access.method.P;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.hwyj.domain.CustomerVO;
import com.hwyj.domain.MemberVO;
import com.hwyj.service.MemberService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/member/*")
@AllArgsConstructor
public class MemberController {
	
	private MemberService memberService;
	
	//마이페이지
	@GetMapping("myPage")
	public void myPage() {
		
	}
	
	//내정보보기
	@GetMapping("myInfo") 
	public void myInfo() {
		
	}
	
	//내정보 수정페이지
	@GetMapping("modifyMyInfo")
	public void modifyMyInfo() {
		
	}
	
	//내정보 수정하면 다시 내정보보기 페이지로
	@PostMapping("modifyMyInfo")
	public String modifyMyInfo(MemberVO memberVO, RedirectAttributes rttr) {
		if(memberService.modifyMyInfo(memberVO)) {
			rttr.addFlashAttribute("result", "m_success");
		}	
		return "redirect:/member/myInfo";
	}
	
	@GetMapping("/insertCustomer") //회원가입
	public void insertCustomer(Locale locale, CustomerVO csVO,Model model) {
		model.addAttribute("memberList", memberService.insertCustomer(csVO));

	}
	
	

}
