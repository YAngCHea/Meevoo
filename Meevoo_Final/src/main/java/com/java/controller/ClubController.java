package com.java.controller;

import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.java.dto.ClubDto;
import com.java.dto.PageDto;
import com.java.service.ClubService;

@Controller
public class ClubController {

	@Autowired ClubService clubService;
	@Autowired HttpSession session;

	@RequestMapping("/club/club")
	public String club(PageDto pageDto, ClubDto clubDto, Model model) {
		String id = (String) session.getAttribute("sessionId");

		// 모임목록 전체 가져오기
		HashMap<String, Object> map = clubService.selectClubAll(pageDto);
		model.addAttribute("list", map.get("list"));
		model.addAttribute("pageDto", map.get("pageDto"));
		if (id == null) {
			// 모임목록 추천 가져오기 1. 로그인 전, 찜하기 많고, 최근 게시글 중 모집중인 모임목록 2개
			ArrayList<ClubDto> recsLogoutList = clubService.selectClubRecsLogout();
			model.addAttribute("recsList", recsLogoutList);
		} else {
			// 모임목록 추천 가져오기 2. 로그인한 사람의 관심지역, 관심종목과 일치하는 모집중인 모임목록 2개
			ArrayList<ClubDto> recsLoginList = clubService.selectClubRecsLogin(id);
			model.addAttribute("recsList", recsLoginList);
		}
		
		// 검색, 필터 input 반영해서 모임목록 가져오기
				
		return "club/club";
	}

	@RequestMapping("/club/cView")
	public String cView(int cno, Model model) {
		
		// 모임목록 1개 가져오기
		ClubDto cdto = clubService.selectClubOne(cno);
		model.addAttribute("cdto", cdto);
		
		return "club/cView";
	}

	@RequestMapping("/club/cWrite")
	public String cWrite() {
		return "club/cWrite";
	}

	@RequestMapping("/club/cMEvaluation")
	public String cMEvaluation() {
		return "club/cMEvaluation";
	}

	@RequestMapping("/club/cSRSuggestion")
	public String cSRSuggestion() {
		return "club/cSRSuggestion";
	}

}
