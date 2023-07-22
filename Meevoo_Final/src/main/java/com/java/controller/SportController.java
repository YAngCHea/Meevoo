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
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.java.dto.SportDto;
import com.java.dto.SportReportDto;
import com.java.dto.SportReviewDto;
import com.java.dto.SportReviewReportDto;
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
		ArrayList<SportReviewDto> sreList = sportService.selectReAll(sfno); 
		model.addAttribute("sreList", sreList);
		
		model.addAttribute("prevDto", map.get("prevDto"));
		model.addAttribute("nextDto", map.get("nextDto"));
		
		model.addAttribute("page", page);
		return "/sport/sportListView";
	} // sportListView
	
	@RequestMapping("/sport/reviewInsert")
	@ResponseBody //데이터로 리턴해서 가져와라
	public SportReviewDto reviewInsert(SportReviewDto sreDto) {
		System.out.println("등록 ajax에서 넘어온 아이디 : "+sreDto.getId());
		System.out.println("등록 ajax에서 넘어온 리뷰번호 : "+sreDto.getSreno());
		System.out.println("등록 ajax에서 넘어온 시설번호 : "+sreDto.getSfno());
		System.out.println("등록 ajax에서 넘어온 리뷰 데이터 : "+sreDto.getSrecontent());
		System.out.println("등록 ajax에서 넘어온 별점 : "+sreDto.getSstar());

		//하단리뷰 저장, 1개 가져오기
		SportReviewDto sreviewdto = sportService.reviewInsert(sreDto);
		
		return sreviewdto;
	} //reviewInsert
	
	
	@RequestMapping("sport/reviewDelete")
	@ResponseBody //데이터로 리턴해서 가져와라
	public String reviewDelete(int sreno) {
		System.out.println("ajax 넘어온 데이터 : "+sreno);
		
		//하단 리뷰 1개 삭제하기
		sportService.reviewDelete(sreno);
		System.out.println(sreno);
		
		String result = "success";
		return result;
	} //reviewDelete
	
	
	@RequestMapping("sport/reviewUpdateSave") //수정한 리뷰 저장
	@ResponseBody //데이터로 리턴해서 가져와라
	public SportReviewDto reviewUpdateSave(SportReviewDto sreDto) {
		
		//수정한 하단 리뷰 저장
		SportReviewDto sreviewdto = sportService.reviewUpdateSave(sreDto);
		return sreviewdto;
	} //reviewUpdateSave 
	
	
	@GetMapping("/sport/sportReviewReport")
	public String sportReviewReport() {

		// 신고글 작성으로 인한 리뷰글 전체 가져오기
		
		return "sport/sportReviewReport";
	} // sportReviewReport
	
	
	@PostMapping("/sport/sportReviewReport")
	public String sportReportWrite(SportReviewReportDto srerepDto, Model model) {
		
		// 리뷰글에 대한 신고글 1개 작성
		sportService.insertReportOne(srerepDto);
		
		return "redirect:/sport/sportList";
	} // sportReviewReport
	

}
