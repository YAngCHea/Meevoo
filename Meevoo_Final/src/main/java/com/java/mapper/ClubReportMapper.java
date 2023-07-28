package com.java.mapper;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;

import com.java.dto.ClubReportDto;
import com.java.dto.PageDto;
import com.java.dto.SearchDto;

@Mapper
public interface ClubReportMapper {

	//1.clubReportList 가져오기
	ArrayList<ClubReportDto> selectAll(PageDto pagedto, SearchDto search);

	//1.clubReportList 가져오기 - 개수 가져오기
	int selectListCount(SearchDto search);

	
	 // 2. clubReportView 상세페이지 
	ClubReportDto selectOne(ClubReportDto crdto);
	  
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
