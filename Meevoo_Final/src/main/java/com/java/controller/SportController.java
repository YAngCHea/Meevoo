package com.java.controller;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.java.dto.SportDto;
import com.java.service.SportService;

@Controller
public class SportController {

	@Autowired
	SportService sportService;
	
	@RequestMapping("/sport/sportnotice")
	public String sportnotice(@RequestParam(defaultValue ="1")int page,
			Model model) {

		// 게시글 전체 가져오기
		HashMap<String,Object> map = sportService.selectAll(page);
		model.addAttribute("list", map.get("list"));
		
		model.addAttribute("page", map.get("page"));
		model.addAttribute("listCount", map.get("listCount"));
		model.addAttribute("startPage", map.get("startPage"));
		model.addAttribute("endPage", map.get("endPage"));
		model.addAttribute("maxPage", map.get("maxPage"));

		return "/sport/sportnotice";
	}
	
	
	@RequestMapping("/sport/sportnoticeView")
	public String noticeView(@RequestParam(defaultValue = "1") int sfno,
			int page, Model model) {

		// 게시글 1개 가져오기
		HashMap<String, Object> map = sportService.selectOne(sfno);
		model.addAttribute("sdto", map.get("sdto"));
		
		model.addAttribute("prevDto", map.get("prevDto"));
		model.addAttribute("nextDto", map.get("nextDto"));
		
		model.addAttribute("page", page);
		return "/sport/sportnoticeView";
	} // noticeView

	
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
//----------------------------------------------------------------
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
