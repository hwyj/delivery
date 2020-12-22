package com.hwyj.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.hwyj.domain.ResMenuVO;
import com.hwyj.mapper.MemberMapper;
import com.hwyj.mapper.RestaurantMapper;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
@AllArgsConstructor
public class RestaurantServiceImpl implements RestaurantService {
	
	private RestaurantMapper restaurantMapper;
	
	//메뉴보기 서비스
	@Override
	public List<ResMenuVO> menuList(String id) {
		log.info("메뉴보기: "+restaurantMapper.readMenu(id));
		return restaurantMapper.readMenu(id);
	}

}
