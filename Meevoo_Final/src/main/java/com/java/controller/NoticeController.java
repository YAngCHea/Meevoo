package com.java.controller;

import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.multipart.MultipartFile;

import com.fasterxml.jackson.databind.ser.std.StdKeySerializers.Default;
import com.java.dto.FAQDto;
import com.java.dto.MemberDto;
import com.java.dto.NoticeDto;
import com.java.dto.PageDto;
import com.java.dto.QnADto;
import com.java.service.NoticeService;

@Controller
public class NoticeController {

	@Autowired NoticeService noticeService;
	
//== 공지사항 notice ================================================================================
	
// 1. 전체 회원 하단 넘버링 notice/notice -------------------------------------------------------------------
		@RequestMapping("/notice/notice")
		public String notice(PageDto pageDto, String search_input, Model model) {
			
			//게시글 전체가져오기
			HashMap<String, Object> map = noticeService.selectNoticeAll(pageDto, search_input);
			model.addAttribute("nlist",map.get("nlist"));
			model.addAttribute("search_input",map.get("search_input"));
			model.addAttribute("pageDto",map.get("pageDto"));
		
			System.out.println("search_input"+search_input);
			
			return "notice/notice";
		}	
	
// 2. 공지사항 불러오기 : notice/noticeView
	@RequestMapping("/notice/noticeView")
	public String boardView(@RequestParam(defaultValue = "1") int notino,@RequestParam(defaultValue = "1") int page,Model model) {
		HashMap<String, Object> map = noticeService.selectNoticeOne(notino);
		//게시글 1개 가져오기
		model.addAttribute("ndto",map.get("ndto"));
		model.addAttribute("page",page);
		return "notice/noticeView";
	}	

// 2. 공지사항 새로 추가하기------------------------------------------------------------------

// 1) 공지사항 추가하기
	//noticeWrite에서 dto가져오기(번호때문에)
	@GetMapping("/notice/noticeWrite")
	public String noticeWrite() {
		return "notice/noticeWrite";
	}
	
// 2) 추가한 공지사항 저장하기
	@PostMapping("/notice/noticeWrite")
	public String noticeWrite(NoticeDto ndto, @RequestPart(required = false) MultipartFile files, Model model) {
		//게시글 1개 저장
		noticeService.insertNotice(ndto,files);
		String result = "i_success";
		return "redirect:/notice/notice?result="+result;
	}
	
// 3. 공지사항 수정하기------------------------------------------------------------------
	// 1) 수정할 공지사항 불러오기
		@GetMapping("/notice/noticeModify")
		public String noticeModify(int notino, Model model) {
			NoticeDto ndto = noticeService.selectNMOne(notino);
			model.addAttribute("ndto",ndto);
			return "notice/noticeModify";
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













}
