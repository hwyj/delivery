package com.hwyj.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.hwyj.service.RestaurantService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/restaurant/*")
@AllArgsConstructor
public class RestaurantController {
	
	private RestaurantService restaurantService;
	
	//식당 기본페이지
	@GetMapping("res") //페이지 이름 뭘로하지????
	public void res(String id, Model model) {
		model.addAttribute("menuList", restaurantService.menuList(id));
	}

}
