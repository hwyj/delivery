package com.hwyj.service;

import java.util.List;

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
	


}
