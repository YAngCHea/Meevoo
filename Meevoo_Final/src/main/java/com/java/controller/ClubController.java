package com.java.controller;

import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.UUID;

import javax.servlet.http.HttpSession;

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
	public String doCWrite(ClubDto cdto, @RequestPart MultipartFile file, Model model) throws Exception { 
		//String id = (String)session.getAttribute("sessionId");
		
		//사진 1개 저장
		String fileName="";
		
		//파일이 있을경우 파일저장
		if(!file.isEmpty()) {
			String ori_fileName = file.getOriginalFilename();//실제파일이름
			UUID uuid = UUID.randomUUID(); //랜덤숫자생성
			fileName = uuid+"_"+ori_fileName; //변경파일이름 - 중복방지
			String uploadUrl = "c:/upload/"; //파일업로드위치
			File f = new File(uploadUrl+fileName);
			file.transferTo(f); //파일저장시킴
		}//if
		
		cdto.setCimg(fileName); //cdto에 fileName이름 저장
		//모임목록 글 1개 저장
		clubService.insertClub(cdto);
		return "redirect:/club/club"; 
	}
	 
	
	@RequestMapping("/club/cWriteSearchSF")
	public String cWriteSearchSF(PageDto pageDto, ClubDto clubDto, Model model) {
		
		//운동모임장소 찾기 체육시설 목록 전체 가져오기
		HashMap<String,Object> map = clubWriteSearchSFService.selectClubSearchSFAll(pageDto);
		model.addAttribute("list", map.get("list"));
		model.addAttribute("pageDto", map.get("pageDto"));
		
		return "club/cWriteSearchSF";
	}
	
	@RequestMapping("/club/cWriteUpdate")
	public String cWriteUpdate() {
		return "club/cWriteUpdate";
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
