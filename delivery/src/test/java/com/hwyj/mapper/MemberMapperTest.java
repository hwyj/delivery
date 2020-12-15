package com.hwyj.mapper;

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
	
	@Test
	public void testRead() { //멤버 정보 읽는 테스트
		
		MemberVO memberVO=mapper.read("admin90");
		log.info("read.... "+memberVO);
		memberVO.getAuthList().forEach(authVO -> log.info(authVO));
	}

}
