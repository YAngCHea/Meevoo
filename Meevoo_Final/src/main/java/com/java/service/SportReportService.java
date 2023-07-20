package com.java.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.java.dto.SportDto;
import com.java.dto.SportReportDto;

@Service
public interface SportReportService {

	// 문의글 전체 가져오기
	HashMap<String, Object> selectAll(int page, String category, String srep_word);

	// 문의글 1개 가져오기
	HashMap<String, Object> selectOne(int srepno);

	// 문의글 작성으로 인한 시설번호 전체 가져오기
	ArrayList<SportDto> selectSfno();
	// 문의글 1개 저장
	void insertOne(SportReportDto srDto, List<MultipartFile> files);

	// 문의글 1개 수정
	void updateOne(SportReportDto srDto, List<MultipartFile> files);
	
	// 문의글 삭제하기
	void deleteOne(int srepno);





}
