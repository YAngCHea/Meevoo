package com.java.service;

import java.util.ArrayList;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.java.dto.MemberDto;
import com.java.mapper.AdminMapper;

@Service
public class AdminServiceImpl implements AdminService {

	@Autowired
	AdminMapper adminMapper;
	
	@Override  //회원 전체 가져오기
	public ArrayList<MemberDto> selectAll() {
		ArrayList<MemberDto> list = new ArrayList<>();
		//회원 전체 가져오기
		list = adminMapper.selectAll();
		
		return list;
	}

	

}
