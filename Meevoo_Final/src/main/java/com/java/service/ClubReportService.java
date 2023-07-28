package com.java.service;

import java.util.HashMap;

import org.springframework.stereotype.Service;

import com.java.dto.ClubReportDto;
import com.java.dto.PageDto;
import com.java.dto.SearchDto;

@Service
public interface ClubReportService {

	//1.clubReportList 가져오기
	HashMap<String, Object> selectAll(PageDto pagedto, SearchDto search);

	
	// 2. clubReportView 상세페이지
	HashMap<String, Object> selectOne(ClubReportDto crdto);
	 
}
