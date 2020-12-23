package com.hwyj.security.domain;

import java.util.Collection;
import java.util.stream.Collectors;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;

<<<<<<< HEAD
import com.hwyj.domain.CustomerVO;
import com.hwyj.domain.MemberVO;

import lombok.Getter;

@Getter
public class CustomUser extends User {
	
	private static final long serialVersionUID = 1L;
	
	private MemberVO memberVO;
	private CustomerVO customervo;
	
	public CustomUser(String id, String pw, Collection<? extends GrantedAuthority> authorities) {
		super(id, pw, authorities);
	}
	
	public CustomUser(MemberVO memberVO) {
		super(memberVO.getId(), memberVO.getPw(),
				memberVO.getAuthList().stream().map(auth -> new SimpleGrantedAuthority(auth.getAuth())).collect(Collectors.toList()));
		
		this.memberVO= memberVO;
	}
	
=======
import com.hwyj.domain.MemberVO;

import lombok.Getter;

@Getter
public class CustomUser extends User {
	
	private static final long serialVersionUID = 1L;
	
	private MemberVO memberVO;
	
	public CustomUser(String id, String pw, Collection<? extends GrantedAuthority> authorities) {
		super(id, pw, authorities);
	}
	
	public CustomUser(MemberVO memberVO) {
		super(memberVO.getId(), memberVO.getPw(),
				memberVO.getAuthList().stream().map(auth -> new SimpleGrantedAuthority(auth.getAuth())).collect(Collectors.toList()));
		
		this.memberVO= memberVO;
	}

>>>>>>> branch 'main' of https://github.com/hwyj/delivery.git
}
