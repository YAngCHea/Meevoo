package com.java.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import com.java.dto.ClubDto;
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
		//model.addAttribute("pagedto", map1.get("pagedto"));


		return "clubreport/clubReportView";
	}
	 
// 3. clubReportWrite 신고글 작성하기
	
	// 3-1.신고글 작성을 위해 모임 번호랑 모임 제목 가져오기
	@GetMapping("/clubreport/clubReportWrite")
	public String clubReportWrite(Model model) {
		ArrayList<ClubDto> clist = new ArrayList<>();
		clist = clubReportService.selectClist();
		model.addAttribute("clist",clist);
		
		return "clubreport/clubReportWrite";
	}
	
	// 3-2. 신고글 저장하기
    @PostMapping("/clubreport/clubReportWrite")
	public String clubReportWrite(ClubReportDto crdto,List<MultipartFile> files, Model model) {
		clubReportService.insertOne(crdto,files);
		String result="i_success";
    	return "redirect:/clubreport/clubReportList?result="+result;
    }
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
