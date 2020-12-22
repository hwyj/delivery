package com.hwyj.service;

import java.util.List;

import com.hwyj.domain.ResMenuVO;

public interface RestaurantService {
	
	//식당 메뉴보기 서비스
	public List<ResMenuVO> menuList(String id);

}
