package com.java.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MypageController {

	@RequestMapping("/mypage/myProfil")
	public String myProfil() {
		return "mypage/myProfil";
	}

	@RequestMapping("/mypage/myClub")
	public String myClub() {
		return "mypage/myClub";
	}

	@RequestMapping("/mypage/mySport")
	public String mySport() {
		return "mypage/mySport";
	}
}
