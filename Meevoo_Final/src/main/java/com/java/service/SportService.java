package com.java.service;

import java.util.ArrayList;

import java.util.HashMap;

import com.java.dto.SportDto;
import com.java.dto.SportReviewDto;
import com.java.dto.SportReviewReportDto;

public interface SportService {
	
	// 게시글 전체 가져오기
	HashMap<String, Object> selectAll(int page);

	// 게시글 1개 가져오기
	HashMap<String, Object> selectOne(int sfno);

	// 게시글 하단 리뷰 전체 가져오기
	ArrayList<SportReviewDto> selectReAll(int sfno);

	// 게시글 리뷰 저장하기
	SportReviewDto reviewInsert(SportReviewDto sreDto);

	// 게시글 하단 리뷰 1개 삭제하기
	void reviewDelete(int sreno);

	//수정한 하단 리뷰 저장
	SportReviewDto reviewUpdateSave(SportReviewDto sreDto);
	
	// 리뷰글에 대한 신고글 1개 작성
	void insertReportOne(SportReviewReportDto srerepDto);


	
	
	
//	// 게시글 전체 가져오기
//	ArrayList<SportDto> selectAll();
//
//	// 게시글 1개 가져오기
//	SportDto selectOne(int fcltyno);

}
