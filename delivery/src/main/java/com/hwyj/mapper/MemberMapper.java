package com.hwyj.mapper;

import com.hwyj.domain.MemberVO;

public interface MemberMapper {
	
	//멤보정보 읽기 (로그인 등)
	public MemberVO read(String id); 

}
