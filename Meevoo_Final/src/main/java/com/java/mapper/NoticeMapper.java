package com.java.mapper;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.java.dto.FAQDto;
import com.java.dto.NoticeDto;
import com.java.dto.PageDto;
import com.java.dto.QnADto;

@Mapper
public interface NoticeMapper {


	//FAQ 전체 가져오기
	ArrayList<FAQDto> selectFAQAll();

	//QnA 전체 가져오기
	ArrayList<QnADto> selectQnAAll();

	
	
	//공지사항 전체 가져오기
	ArrayList<NoticeDto> selectNoticeAll(@Param("pDto")PageDto pageDto, String search_input);

	//공지사항 하단 넘버링
	int selectNoticeListCount();

	// 2. 공지사항 상세페이지
	ArrayList<NoticeDto> selectNoticViewAll(@Param("pDto")PageDto pageDto);

	// 공지사항 상세페이지
	NoticeDto selectNoticeOne(int notino);

	//공지사항 추가하기
	void insertNotice(NoticeDto ndto);

	// 1) 수정할 공지사항 가져오기
	NoticeDto selectNMOne(int notino);



}
