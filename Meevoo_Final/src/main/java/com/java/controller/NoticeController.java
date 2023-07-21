package com.java.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.java.dto.FAQDto;
import com.java.dto.NoticeDto;
import com.java.dto.QnADto;
import com.java.service.NoticeService;

@Controller
public class NoticeController {

	@Autowired NoticeService noticeService;
	
	//공지사항 전체 가져오기
	@RequestMapping("/notice/notice")
	public String notice(Model model) {
		ArrayList<NoticeDto> notilist = new ArrayList<>();
		notilist = noticeService.selectNotiAll();
		model.addAttribute("notilist",notilist);
		
		return "notice/notice";
	}

	//FAQ 전체 가져오기
	@RequestMapping("/notice/FAQ")
	public String FAQ(Model model) {
		
		ArrayList<FAQDto> faqlist = new ArrayList<>();
		faqlist = noticeService.selectFAQAll();
		model.addAttribute("faqlist",faqlist);
		
		return "notice/FAQ";
	}
	
	//QnA 전체 가져오기
	@RequestMapping("/notice/QnA")
	public String QnA(Model model) {
		
		ArrayList<QnADto> qnalist = new ArrayList<>();
		qnalist = noticeService.selectQnAAll();
		model.addAttribute("qnalist",qnalist);
		
		return "notice/QnA";
	}

	//공지사항 작성하기 페이지
	@RequestMapping("/notice/notice_write")
	public String notice_write() {
		return "notice/notice_write";
	}
}
