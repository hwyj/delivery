package com.hwyj.mapper;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.hwyj.domain.MemberVO;

import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class MemberMapperTest {
	
	@Autowired
	private MemberMapper mapper;
	
	@Test //로그인 멤버정보 읽기 테스트
	public void testLogin() {
		MemberVO memberVO=mapper.login("admin90");
		log.info("login----------- ");
		memberVO.getAuthList().forEach(authVO -> log.info(authVO));
		
	}
	
	@Test //내정보 수정 테스트
	public void testUpdate() {
		MemberVO memberVO = new MemberVO();
		memberVO.setId("user55");
		memberVO.setM_name("수정이름");
		log.info("내정보 수정 성공이면 1: "+mapper.update(memberVO));
	}
	
	
	
	@Test //권한별 멤버 목록 보기 테스트
	public void testGetList() {
		List<MemberVO> memberList=mapper.getMemberList("ROLE_RES");
		for(MemberVO temp : memberList) {
			log.info(temp);
		}		
	}
	
	@Test //멤버정보 상세보기 테스트
	public void testRead() { 	
		MemberVO memberVO=mapper.read("user3");
		log.info("read------------- "+memberVO);
	}
	
	@Test //멤버 삭제 테스트
	public void testDeleteMember() {
		log.info("멤버 삭제 확인: "+mapper.deleteMember("user48"));
	}

}
