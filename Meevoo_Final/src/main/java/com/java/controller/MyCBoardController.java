package com.java.controller;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.java.dto.CListCurrDto;
import com.java.dto.CListJoinDto;
import com.java.dto.CListPickDto;
import com.java.dto.ClubPickDto;
import com.java.dto.PageDto;
import com.java.service.MyCBoardService;

@Controller
public class MyCBoardController {

	@Autowired MyCBoardService myCBoardService;
	
	//운동모임 - 찜한 리스트 전체 가져오기
	@RequestMapping("/mypage/myClubPick")
	public String myClubPick(PageDto pageDto, Model model) {

		/* System.out.println("MyCBoardController page"+pageDto.getPage()); */
		
		HashMap<String, Object> map = myCBoardService.selectClubPickAll(pageDto);
		
		model.addAttribute("list", map.get("list"));
		model.addAttribute("pageDto", map.get("pageDto"));
		
		//System.out.println("MyCBoardController list : "+list.get(0).getCno());
		
		return "mypage/myClubPick";
	}
	
	//운동모임 - 최근본 리스트 전체 가져오기
	@RequestMapping("/mypage/myClubCurr")
	public String myClubCurr(PageDto pageDto, Model model) {
		
		HashMap<String, Object> map = myCBoardService.selectClubCurrAll(pageDto);
		
		model.addAttribute("list", map.get("list"));
		model.addAttribute("pageDto", map.get("pageDto"));
		
		
		return "mypage/myClubCurr";
	}
	
	//운동모임 - 참여한 리스트 전체 가져오기
	@RequestMapping("/mypage/myClubJoin")
	public String myClubJoin(PageDto pageDto, Model model) {
		
		//System.out.println("MyCBoardController list : "+list.get(0).getid());
		System.out.println("MyCBoardController page"+pageDto.getPage());
		HashMap<String, Object> map = myCBoardService.selectClubJoinAll(pageDto);
		
		model.addAttribute("list", map.get("list"));
		model.addAttribute("pageDto", map.get("pageDto"));
		
		return "mypage/myClubJoin";
	}
}
