package com.java.controller;

import java.util.ArrayList;


import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.java.dto.SportDto;
import com.java.dto.SportReviewDto;
import com.java.service.SportService;

@Controller
public class SportController {

	@Autowired
	SportService sportService;
	
	@RequestMapping("/sport/sportList")
	public String sportList(@RequestParam(defaultValue ="1")int page,
			Model model) {

		// 게시글 전체 가져오기
		HashMap<String,Object> map = sportService.selectAll(page);
		model.addAttribute("list", map.get("list"));
		
		model.addAttribute("page", map.get("page"));
		model.addAttribute("listCount", map.get("listCount"));
		model.addAttribute("startPage", map.get("startPage"));
		model.addAttribute("endPage", map.get("endPage"));
		model.addAttribute("maxPage", map.get("maxPage"));

		return "/sport/sportList";
	} // sportList
	
	
	@RequestMapping("/sport/sportListView")
	public String sportListView(@RequestParam(defaultValue = "1") int sfno,
			int page, Model model) {

		// 게시글 1개 가져오기
		HashMap<String, Object> map = sportService.selectOne(sfno);
		model.addAttribute("sdto", map.get("sdto"));
		
		//하단 댓글 전체 가져오기
//		ArrayList<SportReviewDto> sreList = sportService.selectReAll(sfno); 
//		model.addAttribute("sreList", sreList);
		
		model.addAttribute("prevDto", map.get("prevDto"));
		model.addAttribute("nextDto", map.get("nextDto"));
		
		model.addAttribute("page", page);
		return "/sport/sportListView";
	} // sportListView
	
//	@RequestMapping("/sport/reviewInsert")
//	@ResponseBody //데이터로 리턴해서 가져와라
//	public SportReviewDto reviewInsert(SportReviewDto sreDto) {
//		System.out.println("등록 ajax에서 넘어온 리뷰 데이터 : "+sreDto.getSrecontent());
//
//		//하단리뷰 저장, 1개 가져오기
//		SportReviewDto sreviewdto = sportService.reviewInsert(sreDto);
//		
//		return sreviewdto;
//	} //reviewInsert
	
	
	//----------------------------------------------------------------	
//	@RequestMapping("/sport/sportnotice")
//	public String sportnotice(Model model) {
//
//		ArrayList<SportDto> list = new ArrayList<>();
//
//		// 게시글 전체 가져오기
//		list = sportService.selectAll();
//		model.addAttribute("list", list);
//
//		return "/sport/sportnotice";
//	}

//	@RequestMapping("/sport/sportnoticeView")
//	public String noticeView(int sfno, Model model) {
//
//		// 게시글 1개 가져오기
//		SportDto sdto = sportService.selectOne(sfno);
//		model.addAttribute("sdto", sdto);
//
//		return "/sport/sportnoticeView";
//	} // noticeView

}
