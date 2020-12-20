package com.hwyj.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.hwyj.domain.MemberVO;
import com.hwyj.mapper.MemberMapper;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
@AllArgsConstructor
public class MemberServiceImpl implements MemberService {
	
	private MemberMapper memberMapper;
	
	//내정보 수정 서비스
	@Override
	public boolean modifyMyInfo(MemberVO memberVO) {
		log.info("내정보수정:"+memberVO);
		return memberMapper.update(memberVO)==1; //수정처리가 정상적으로 되면 1리턴 -> 1==1이면 true
	}
	
	
	//멤버 목록 보기 서비스
//	@Override
//	public List<MemberVO> getMemberList(String auth) {
//		log.info("멤버 목록 보기: "+memberMapper.getMemberList(auth));
//		return memberMapper.getMemberList(auth);
//	}
//		
	//멤버정보 상세보기 서비스 (내정보보기)
//	@Override
//	public MemberVO getMemberInfo(String id) {
//		log.info("내정보 상세보기: "+memberMapper.read(id));	
//		return memberMapper.read(id);
//	}
//	
//	//멤버 삭제하기 서비스
//	@Override
//	public boolean deleteMember(String id) {
//		log.info("삭제----------");
//		return memberMapper.deleteMember(id)==1; //삭제처리가 정상적으로 되면 1리턴 -> 1==1이면 true
//	}

}
