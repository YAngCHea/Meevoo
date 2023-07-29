package com.java.mapper;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;

import com.java.dto.ClubDto;
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
	
// 3. clubReportWrite 신고글 작성하기

	// 3-1.신고글 작성을 위해 모임 번호랑 모임 제목 가져오기
	ArrayList<ClubDto> selectClist();

	// 3-2. 신고글 저장하기
	void insertOne(ClubReportDto crdto);
	  
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
