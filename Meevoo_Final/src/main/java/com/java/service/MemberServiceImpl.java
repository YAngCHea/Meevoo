package com.java.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.java.dto.MemberDto;
import com.java.mapper.MemberMapper;

@Service
public class MemberServiceImpl implements MemberService {

	@Autowired
	MemberMapper memberMapper;
	
	
	@Override //로그인 확인
	public MemberDto selectLogin(MemberDto memberDto) {
		MemberDto mdto = memberMapper.selectLogin(memberDto);
				
		return mdto;
	}


	@Override //scate 가져오기
	public String[] selectscateAll() {
		String[] scate = memberMapper.selectscateAll();
		
		return scate;
	}



}
