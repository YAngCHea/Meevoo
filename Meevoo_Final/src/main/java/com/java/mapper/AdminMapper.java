package com.java.mapper;

import java.util.ArrayList;


import org.apache.ibatis.annotations.Mapper;

import com.java.dto.ClubDto;
import com.java.dto.MemberDto;

@Mapper
public interface AdminMapper {

	//회원 전체 가져오기
	ArrayList<MemberDto> selectAll();

	//모임 전체 가져오기
	ArrayList<ClubDto> selectClubAll();

	
}
