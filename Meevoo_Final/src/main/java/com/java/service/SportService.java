package com.java.service;

import java.util.ArrayList;

import java.util.HashMap;

import com.java.dto.SportDto;

public interface SportService {
	
	// 게시글 전체 가져오기
	HashMap<String, Object> selectAll(int page);

	// 게시글 1개 가져오기
	HashMap<String, Object> selectOne(int sfno);

	
	
	
//	// 게시글 전체 가져오기
//	ArrayList<SportDto> selectAll();
//
//	// 게시글 1개 가져오기
//	SportDto selectOne(int fcltyno);

}
