package com.java.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.java.dto.FAQDto;
import com.java.dto.NoticeDto;
import com.java.dto.QnADto;
import com.java.mapper.NoticeMapper;

@Service
public class NoticeServiceImpl implements NoticeService {

	@Autowired NoticeMapper noticeMapper;
	
	//공지사항 전체 가져오기
	@Override
	public ArrayList<NoticeDto> selectNotiAll() {
		ArrayList<NoticeDto> notilist = new ArrayList<>();
		notilist = noticeMapper.selectNotiAll();
		
		return notilist;
	}

	//FAQ 전체 가져오기
	@Override
	public ArrayList<FAQDto> selectFAQAll() {
		ArrayList<FAQDto> faqlist = new ArrayList<>();
		faqlist = noticeMapper.selectFAQAll();
		return faqlist;
	}

	//QnA 전체 가져오기
	@Override
	public ArrayList<QnADto> selectQnAAll() {
		ArrayList<QnADto> qnalist = new ArrayList<>();
		qnalist = noticeMapper.selectQnAAll();
		return qnalist;
	}

}
