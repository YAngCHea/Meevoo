package com.java.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.java.dto.ClubDto;
import com.java.dto.PageDto;
import com.java.service.ClubService;
import com.java.service.ClubWriteSearchSFService;

@Controller
public class ClubController {

	@Autowired ClubService clubService;
	@Autowired ClubWriteSearchSFService clubWriteSearchSFService;
	@Autowired HttpSession session;

	@RequestMapping("/club/club")
	public String club(@RequestParam(defaultValue = "none") String result,  //저장값이 없으면 none, 성공하면 1
			PageDto pageDto, ClubDto clubDto, Model model) {
		String id = (String) session.getAttribute("sessionId");

		// 모임목록 전체 가져오기
		HashMap<String, Object> map = clubService.selectClubAll(pageDto);
		model.addAttribute("list", map.get("list"));
		model.addAttribute("pageDto", map.get("pageDto"));
		model.addAttribute("result", result); //파일저장 결과변수
		if (id == null) {
			// 모임목록 추천 가져오기 1. 로그인 전, 찜하기 많고, 최근 게시글 중 모집중인 모임목록 2개
			ArrayList<ClubDto> recsLogoutList = clubService.selectClubRecsLogout();
			model.addAttribute("recsList", recsLogoutList);
		} else {
			// 모임목록 추천 가져오기 2. 로그인한 사람의 관심지역, 관심종목과 일치하는 모집중인 모임목록 2개
			ArrayList<ClubDto> recsLoginList = clubService.selectClubRecsLogin(id);
			model.addAttribute("recsList", recsLoginList);
		}
		return "club/club";
	}
	
	@PostMapping("/club/cFilterAjax")
	@ResponseBody //데이터로 넘겨줌
	public ArrayList<ClubDto>  cFilterAjax(ClubDto clubDto, PageDto pageDto, int dateDifference, Model model) {
		
		//필터 input 반영해서 모임목록 가져오기 (필터검색)
		ArrayList<ClubDto> filterList = clubService.selectClubFilter(clubDto);
		model.addAttribute("filteredClubList", filterList);
		
		return filterList;
	}
	

	@RequestMapping("/club/cView")
	public String cView(int cno, Model model) {
		
		// 모임목록 1개 가져오기
		ClubDto cdto = clubService.selectClubOne(cno);
		model.addAttribute("cdto", cdto);
		
		return "club/cView";
	}

	
	@GetMapping("/club/cWrite")
	public String cWrite() {
		return "club/cWrite";
	}
	
	
	@PostMapping("/club/cWrite") 
	public String doCWrite(ClubDto cdto, List<MultipartFile> files, Model model)  { 
		System.out.println("sfno : "+cdto.getSfno());
		System.out.println("cdodate : "+cdto.getDateStr());
		//모임목록 글 1개 저장
		clubService.insertClub(cdto, files);
	    String result="i_success"; //insert가 성공한다
	    
	    //입력받은 cdodate를 sql에 넣을 수 있도록 형변환 (string -> date)
	    String dateStr = cdto.getDateStr();
		// 포맷터
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm");
		// Date 는 import java.util.Date;
		Date dateD = null;
		try {
			
			dateD = formatter.parse(dateStr);
		} catch (Exception e) {
			e.printStackTrace();
		}
		System.out.println(dateD);
		java.sql.Date sqlPackageDate = new java.sql.Date(dateD.getTime());
		
		cdto.setCdodate(sqlPackageDate);
	    
	 
		return "redirect:/club/club?result="+result; 
	}
	 
	
	@RequestMapping("/club/cWriteSearchSF")
	public String cWriteSearchSF(PageDto pageDto, ClubDto clubDto, Model model) {
		
		//운동모임장소 찾기 체육시설 목록 전체 가져오기
		HashMap<String,Object> map = clubWriteSearchSFService.selectClubSearchSFAll(pageDto);
		model.addAttribute("list", map.get("list"));
		model.addAttribute("pageDto", map.get("pageDto"));
		
		return "club/cWriteSearchSF";
	}
	
	@RequestMapping("/club/cWriteEdit")
	public String cWriteEdit() {
		return "club/cWriteEdit";
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
