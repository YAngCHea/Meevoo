package com.java.mapper;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;

import com.java.dto.ClubDto;
import com.java.dto.PageDto;

@Mapper
public interface ClubMapper {
	
	//모임목록 전체 가져오기
	public ArrayList<ClubDto> selectClubAll(PageDto pageDto);

	//전체 모임목록 글 수
	public int selectListCount(); 
	

}
