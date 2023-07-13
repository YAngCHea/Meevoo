package com.java.mapper;

import java.util.ArrayList;


import org.apache.ibatis.annotations.Mapper;

import com.java.dto.SportDto;

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
	
//	//게시글 전체 가져오기
//	ArrayList<SportDto> selectAll();
//
//	//게시글 1개 가져오기
//	SportDto selectOne(int fcltyno);

	
}
