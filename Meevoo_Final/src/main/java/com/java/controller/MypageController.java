package com.java.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.java.dto.MemberDto;
import com.java.service.MemberService;

@Controller
public class MypageController {

	@Autowired MemberService memberService;
	
	@Autowired
	HttpSession session;
	
	//내 정보 페이지-1명의 회원정보 가져오기
	@RequestMapping("/mypage/myProfil")
	public String myProfil(String id, Model model) {
		
		if(session.getAttribute("sessionId")==null) {
			return "member/login";
		}
		
		//String test = (String) session.getAttribute("sessionId");
		//System.out.println(test);
		id=(String) session.getAttribute("sessionId");
		
		//System.out.println("id: "+id);
		//멤버 정보 1개 가져오기
		MemberDto mdto = memberService.selectMemOne(id);

		//운동 리스트 select에 표시하기
		String[] scate = memberService.selectscateAll();
		for(int i=0;i<scate.length;i++) {
			//System.out.println("scate : "+scate[i]);
		}

		model.addAttribute("mdto", mdto);
		model.addAttribute("scate", scate);
		
		return "mypage/myProfil";
	}
	
	//내 정보 수정 페이지
	@RequestMapping("/mypage/myProfilEdit")
	public String myProfilEdit(String id, MemberDto memberDto, Model model) {
		
		//로그인 했을 경우에만 마이페이지 열 수 있도록
		if(session.getAttribute("sessionId")==null) {
			return "member/login";
		}
		//sessionId 가져오기
		id = (String) session.getAttribute("sessionId");

		//아이디로 회원 정보 가져오기
		MemberDto mdto = memberService.selectMemOne(id);
		
		
		model.addAttribute("mdto", mdto);
		
		return "mypage/myProfilEdit";
	}
	
	@RequestMapping("/mypage/updateSaveUser")
	public String updateSaveUser(MemberDto memDto) {
		System.out.println("MypageController : "+memDto.getNicknm());
		System.out.println("MypageController : "+memDto.getScate());
		System.out.println("MypageController : "+memDto.getDongcate());
		System.out.println("MypageController : "+memDto.getSelfintro());
		System.out.println("MypageController : "+memDto.getId());
		
		//회원정보 수정 저장
		memberService.updateSaveUser(memDto);
		
		return "redirect:/main";
	}


	
}
