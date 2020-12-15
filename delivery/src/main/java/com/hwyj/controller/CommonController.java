package com.hwyj.controller;

import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
public class CommonController {
	
	//로그인 테스트용 나중에 지우기
	@GetMapping("/test/securityTest") //이 주소 요청하면 아래 /login 페이지 열림
	public void securityTest() {
		
	}
	
	@GetMapping("/login")
	public void login() {
		
	}
	
	@GetMapping("/accessError") //403페이지 (접근제한) //accessError.jsp 수정 해야됨//
	public void accessDenied(Authentication auth) {
		log.info(auth);
	}
	

}
