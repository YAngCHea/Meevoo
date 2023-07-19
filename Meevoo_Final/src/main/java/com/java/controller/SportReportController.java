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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.java.dto.SportDto;
import com.java.dto.SportReportDto;
import com.java.service.SportReportService;

@Controller
public class SportReportController {
	
	@Autowired
	SportReportService sportReportService;
	
	@RequestMapping("/sportreport/sportReportList")
	public String sportReportList(@RequestParam(defaultValue ="1")int page,
			String category,String srep_word,Model model) {
		
		// 문의글 전체 가져오기
		HashMap<String,Object> map = sportReportService.selectAll(page,category,srep_word);
		model.addAttribute("list", map.get("list"));
		
		model.addAttribute("page", map.get("page"));
		model.addAttribute("listCount", map.get("listCount"));
		model.addAttribute("startPage", map.get("startPage"));
		model.addAttribute("endPage", map.get("endPage"));
		model.addAttribute("maxPage", map.get("maxPage"));
		model.addAttribute("category", map.get("category"));
		model.addAttribute("srep_word", map.get("srep_word"));
		
		return "/sportreport/sportReportList";
	}
	
	
	@RequestMapping("/sportreport/sportReportListView")
	public String sportReportListView(@RequestParam(defaultValue = "1") int srepno, 
			int page, String category, String srep_word, Model model) {

		// 문의글 1개 가져오기
		HashMap<String, Object> map = sportReportService.selectOne(srepno);
		model.addAttribute("srdto", map.get("srdto"));
		
//		model.addAttribute("prevDto", map.get("prevDto"));
//		model.addAttribute("nextDto", map.get("nextDto"));
		
		model.addAttribute("category", category);
		model.addAttribute("srep_word", srep_word);
		model.addAttribute("page", page);

		return "/sportreport/sportReportListView";
	} // sportReportListView
	
	
	@GetMapping("/sportreport/sportReportWrite")
	public String sportReportWrite(Model model) {
		
		ArrayList<SportDto> list = new ArrayList<>();

		// 문의글 작성으로 인한 시설번호 전체 가져오기
		list = sportReportService.selectSfno();
		model.addAttribute("list", list);
		
		return "sportreport/sportReportWrite";
	} // sportReportWrite
	
	
	@PostMapping("/sportreport/sportReportWrite")
	public String sportReportWrite(SportReportDto srDto,
			List<MultipartFile> files, Model model) {
		//게시글 1개저장
		sportReportService.insertOne(srDto,files);
		String result="i_success";
		
		return "redirect:/sportreport/sportReportList?result="+result;
	} // sportReportWrite
	
	
	@RequestMapping("/sportreport/sportReportListDelete")
	public String sportReportList(int srepno) {
		System.out.println("sportReportList srepno :" + srepno);

		// 문의글 삭제하기
		sportReportService.deleteOne(srepno);
		return "redirect:sportReportList";
	}// boardDelete
	
	
//	@RequestMapping("/sport/sportReviewReportWrite")
//	public String sportReviewReportWrite(Model model) {
//		
//		ArrayList<SportDto> list = new ArrayList<>();
//
//		// 리뷰신고글 작성으로 인한 시설번호 전체 가져오기
//		list = sportReportService.selectSfno();
//		model.addAttribute("list", list);
//		
//		return "/sport/sportReviewReportWrite";
//	} // sportReviewReportWrite

}
