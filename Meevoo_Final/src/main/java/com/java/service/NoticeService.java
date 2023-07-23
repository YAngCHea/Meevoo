package com.java.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.web.multipart.MultipartFile;

import com.java.dto.FAQDto;
import com.java.dto.NoticeDto;
import com.java.dto.PageDto;
import com.java.dto.QnADto;

public interface NoticeService {
	
	//FAQ 전체 가져오기
	ArrayList<FAQDto> selectFAQAll();
	
	//QnA 전체 가져오기
	ArrayList<QnADto> selectQnAAll();

	// 1. 전체 공지사항 하단 넘버링
	HashMap<String, Object> selectNoticeAll(PageDto pageDto, String search_input);


	// 2. 공지사항 상세페이지
	HashMap<String, Object> selectNoticeOne(int notino);

	//공지사항 추가하기
	void insertNotice(NoticeDto ndto, MultipartFile files);

	// 1) 수정할 공지사항 불러오기
	NoticeDto selectNMOne(int notino);



}
