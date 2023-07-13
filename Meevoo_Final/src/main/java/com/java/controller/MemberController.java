package com.java.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MemberController {

	@RequestMapping("/member/login")
	public String login() {
		return "member/login";
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
