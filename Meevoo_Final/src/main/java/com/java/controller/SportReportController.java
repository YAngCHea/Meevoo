package com.java.controller;

import java.io.File;
import java.util.ArrayList;

import java.util.HashMap;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.bind.annotation.ResponseBody;
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
		
		return "/sportreport/sportReportWrite";
	} // sportReportWrite
	
	@PostMapping("/sportreport/sportReportWrite")
	public String doSportReportWrite(SportReportDto srdto, 
			@RequestPart MultipartFile file, Model model) throws Exception {
		
		// 파일이 있을경우 파일저장
		String fileName = "";
		if (!file.isEmpty()) {
			// 실제파일 이름
			String ori_fileName = file.getOriginalFilename();
			UUID uuid = UUID.randomUUID(); // 랜덤숫자생성
			fileName = uuid + "_" + ori_fileName; // 변경파일이름 - 중복방지
			String uploadUrl = "c:/upload/"; // 파일업로드 위치
			File f = new File(uploadUrl + fileName);
			file.transferTo(f); // 파일저장
		}
		System.out.println("doBoardWrite fileName : " + fileName);
		srdto.setSrepimg(fileName);
		sportReportService.insertOne(srdto);
		return "redirect:sportReportList";
	}// doSportReportWrite
	
	
	@RequestMapping("/sportreport/sportReportListDelete")
	public String sportReportList(int srepno) {
		System.out.println("boardDto bno1 :" + srepno);

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
