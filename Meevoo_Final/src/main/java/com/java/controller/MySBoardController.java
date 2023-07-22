package com.java.controller;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.java.dto.PageDto;
import com.java.service.MySBoardService;

@Controller
public class MySBoardController {

	@Autowired MySBoardService mySBoardService;
	
	//체육시설 - 찜한 리스트 전체 가져오기
	@RequestMapping("/mypage/mySportPick")
	public String mySportPick(PageDto pageDto, Model model) {
		
		HashMap<String, Object> map = mySBoardService.selectSportPickAll(pageDto);
		
		model.addAttribute("list", map.get("list"));
		model.addAttribute("pageDto", map.get("pageDto"));
		
		return "mypage/mySportPick";
	}
	
	//체육시설 - 최근본 리스트 전체 가져오기
	@RequestMapping("/mypage/mySportCurr")
	public String mySportCurr(PageDto pageDto, Model model) {
		
		HashMap<String, Object> map = mySBoardService.selectSportCurrAll(pageDto);
		
		model.addAttribute("list", map.get("list"));
		model.addAttribute("pageDto", map.get("pageDto"));
		
		
		return "mypage/mySportCurr";
	}
	
	//체육시설 - 후기 작성한 리스트 전체 가져오기
	@RequestMapping("/mypage/mySportReview")
	public String mySportReview(PageDto pageDto, Model model) {
		
		//System.out.println("MyCBoardController list : "+list.get(0).getid());
		System.out.println("MySBoardController page"+pageDto.getPage());
		HashMap<String, Object> map = mySBoardService.selectSportReviewAll(pageDto);
		
		model.addAttribute("list", map.get("list"));
		model.addAttribute("pageDto", map.get("pageDto"));
		
		return "mypage/mySportReview";
	}
}
