package com.hwyj.service;

import java.util.List;

<<<<<<< HEAD
import org.springframework.stereotype.Service;

import com.hwyj.domain.CustomerVO;
import com.hwyj.domain.MemberVO;
import com.hwyj.mapper.Custmapper;
import com.hwyj.mapper.MemberMapper;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
@AllArgsConstructor
public class MemberServiceImpl implements MemberService {
	
	private MemberMapper memberMapper;

	@Override //멤버 목록 보기 서비스
	public List<MemberVO> getMemberList(String auth) {
		log.info("멤버 목록 보기: "+memberMapper.getMemberList(auth));
		return memberMapper.getMemberList(auth);
	}

	@Override //회원가입
	public int insertCustomer(CustomerVO csVO) {
		// TODO Auto-generated method stub
		System.out.println("test");
		System.out.println("test2");
		 int a = memberMapper.insertCustomer(csVO);
		 System.out.println(a);
		 return 0;
	}
	
	/*
	 * @Override public Integer selectCustomer (CustomerVO csVO) { int a =
	 * memberMapper.selectCustomer(csVO.getId()); if(a!=0) { a =2; } return a; }
	 */
	
=======
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import com.hwyj.domain.MemberVO;
import com.hwyj.mapper.MemberMapper;

import lombok.AllArgsConstructor;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;
import lombok.Setter;
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
	

>>>>>>> branch 'main' of https://github.com/hwyj/delivery.git

}
