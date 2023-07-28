package com.java.controller;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.java.dto.ClubReportDto;
import com.java.dto.PageDto;
import com.java.dto.SearchDto;
import com.java.service.ClubReportService;

@Controller
public class ClubReportController {
	
	@Autowired ClubReportService clubReportService;
	
//1.clubReportList 가져오기
	@RequestMapping("/clubreport/clubReportList")
	public String clubReportList(PageDto pagedto, SearchDto search,Model model) {
		
		//HashMap에 태워서 데려오기
		HashMap<String, Object> map = clubReportService.selectAll(pagedto,search);
		
		model.addAttribute("list",map.get("list"));
		model.addAttribute("page",map.get("page"));
		model.addAttribute("listCount",map.get("listCount"));
		model.addAttribute("startPage",map.get("startPage"));
		model.addAttribute("endPage",map.get("endPage"));
		model.addAttribute("maxPage",map.get("maxPage"));
		model.addAttribute("category",map.get("category"));
		model.addAttribute("search_input",map.get("search_input"));
		//model.addAttribute("pagedto",pagedto);    => 여기서 pagedto자체를 보냈으면  jsp에서 찍을때 pagedto.page이런식으로 찍어야한다.
		
		System.out.println("controller ListCount" + pagedto.getListCount());

		return "clubreport/clubReportList";
	}
	
// 2. clubReportView 상세페이지
	@RequestMapping("/clubreport/clubReportView")
	public String clubReportView(ClubReportDto crdto, PageDto pagedto, SearchDto search, Model model) {
		// clubReport 1개 가져오기
		HashMap<String, Object> map1 = clubReportService.selectOne(crdto);
		model.addAttribute("crdto1", map1.get("crdto1"));

		model.addAttribute("category", map1.get("category"));
		model.addAttribute("search_input", map1.get("search_input"));
		model.addAttribute("page", map1.get("page"));

		System.out.println("controller crdto1:" + map1.get("crdto1"));

		return "clubreport/clubReportView";
	}
	 
	

	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
