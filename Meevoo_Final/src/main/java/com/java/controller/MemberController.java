package com.java.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.java.dto.MemberDto;
import com.java.service.MemberService;

@Controller
public class MemberController {

	@Autowired
	MemberService memberService;
	
	@Autowired
	HttpSession session;
	
	@GetMapping("/member/login")
	public String login() {
		return "member/login";
	}

	@PostMapping("/member/login") //login 체크!!!
	public String login(MemberDto memberDto, Model model) {
		System.out.println("memberDto1 ID : "+memberDto.getId());
		System.out.println("memberDto2 PW : "+memberDto.getPw());
		MemberDto mdto = memberService.selectLogin(memberDto);
		
		 if(mdto!=null) { 
			 session.setAttribute("sessionId", mdto.getId());
			 session.setAttribute("sessionName", mdto.getUsernm());
			 
		 }else {
			 model.addAttribute("loginCheck", "fail"); 
			 //String loginCheck="fail"; 과 같은 구문(그런데 웹에서는 안되서 java에서는 안됨)
			 //loginCheck라는 변수에 fail 값을 넣어줌
			 return "/member/login";
		 }
		 
		 
		
		return "redirect:/main";
	}
	

	@RequestMapping("/member/logout")
	public String logout() {
		session.invalidate();
		
		return "redirect:/main";
	}

	@RequestMapping("/member/join")
	public String join() {
		return "member/join";
	}

	@RequestMapping("/member/agree")
	public String agree() {
		return "member/agree";
	}


}
