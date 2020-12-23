package com.hwyj.service;

<<<<<<< HEAD
import java.util.List;

import com.hwyj.domain.CustomerVO;
import com.hwyj.domain.MemberVO;

public interface MemberService {
	
	//권한별 멤버 목록 보기
	public List<MemberVO> getMemberList(String auth);
	
	// 중복검사 ,회원가입
	public int insertCustomer(CustomerVO csVO);
=======
import com.hwyj.domain.MemberVO;

public interface MemberService {
	
	//내정보 수정
	public boolean modifyMyInfo(MemberVO memberVO);
>>>>>>> branch 'main' of https://github.com/hwyj/delivery.git
	

}
