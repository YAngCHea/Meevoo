package com.java.mapper;

import java.util.ArrayList;


import org.apache.ibatis.annotations.Mapper;

import com.java.dto.SportDto;
import com.java.dto.SportReviewDto;
import com.java.dto.SportReviewReportDto;

@Mapper
public interface SportMapper {
	
	//게시글 전체 가져오기
	ArrayList<SportDto> selectAll(int startRow, int endRow);
	
	//게시글 1개 가져오기
	SportDto selectOne(int sfno);
	//게시글 이전글 가져오기
	SportDto selectPrevOne(int sfno);
	//게시글 다음글 가져오기
	SportDto selectNextOne(int sfno);
	
	//게시글 전체개수
	int selectListCount();

	
	// 문의글,리뷰신고글 작성으로 인한 시설번호 전체 가져오기
	ArrayList<SportDto> selectSfno();

	
	// 문의글 하단 리뷰 전체 가져오기
	ArrayList<SportReviewDto> selectReAll(int sfno);
	// 문의글 하단 리뷰 저장하기
	void reviewInsert(SportReviewDto sreDto);
	// 문의글 하단 리뷰 1개 가져오기
	SportReviewDto selectReOne(SportReviewDto sreDto);
	// 게시글 하단 리뷰 1개 삭제하기
	void reviewDelete(int sreno);
	//수정한 하단 리뷰 저장
	void reviewUpdateSave(SportReviewDto sreDto);

	
	// 리뷰글에 대한 신고글 1개 작성
	void insertReportOne(SportReviewReportDto srerepDto);


	
//	//게시글 전체 가져오기
//	ArrayList<SportDto> selectAll();
//
//	//게시글 1개 가져오기
//	SportDto selectOne(int fcltyno);

	
}
