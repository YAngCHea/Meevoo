package com.java.mapper;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;

import com.java.dto.FAQDto;
import com.java.dto.NoticeDto;
import com.java.dto.QnADto;

@Mapper
public interface NoticeMapper {

	//공지사항 전체 가져오기
	ArrayList<NoticeDto> selectNotiAll();

	//FAQ 전체 가져오기
	ArrayList<FAQDto> selectFAQAll();

	//QnA 전체 가져오기
	ArrayList<QnADto> selectQnAAll();

}
