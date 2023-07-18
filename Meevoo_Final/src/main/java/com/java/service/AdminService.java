package com.java.service;

import java.util.ArrayList;

import com.java.dto.ClubDto;
import com.java.dto.MemberDto;


public interface AdminService {

	//회원 전체 가져오기
	ArrayList<MemberDto> selectAll();

	//모임 전체 가져오기
	ArrayList<ClubDto> selectClubAll();
	

	

	
}
