package com.hwyj.service;

import com.hwyj.domain.MemberVO;

public interface MemberService {
	
	//권한별 멤버 목록 보기
	//public List<MemberVO> getMemberList(String auth);
	
	//내정보보기 (id를 통해서) 이건 userDetailsService로 
	//public MemberVO getMemberInfo(String id);
	
	//내정보 수정
	public boolean modifyMyInfo(MemberVO memberVO);
	
	//멤버 삭제하기
	//public boolean deleteMember(String id);

}
