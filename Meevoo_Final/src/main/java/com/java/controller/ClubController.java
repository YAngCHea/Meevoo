package com.java.controller;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.java.dto.ClubDto;
import com.java.dto.PageDto;
import com.java.service.ClubService;

@Controller
public class ClubController {
	
	@Autowired ClubService clubService;
	
	@RequestMapping("/club/club")
	public String club(PageDto pageDto, Model model) {
		
		//모임목록 전체 가져오기
	    HashMap<String, Object> map = clubService.selectClubAll(pageDto);
		model.addAttribute("list",map.get("list"));
		model.addAttribute("pageDto",map.get("pageDto"));
		
		/*
		 * //모임목록 추천 가져오기 ArrayList <ClubDto> relist = clubService.selectClubRe();
		 * model.addAttribute("list",relist);
		 */
		
		return "club/club";
	}
	
	@RequestMapping("/club/cWrite")
	public String cWrite() {
		return "club/cWrite";
	}
	
	@RequestMapping("/club/cView")
	public String cView() {
		return "club/cView";
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
