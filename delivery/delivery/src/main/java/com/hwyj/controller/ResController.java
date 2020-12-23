package com.hwyj.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;


import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/res/*")
@AllArgsConstructor
public class ResController {
	
	
	
	
	@GetMapping("/reshome") 
	public void reshome() {
		
	}
	
	@GetMapping("/menuwrite") 
	public void menuwrite() {

	}
	


}
