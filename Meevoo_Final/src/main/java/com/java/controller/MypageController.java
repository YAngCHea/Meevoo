package com.java.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MypageController {

	@RequestMapping("/mypage/myprofil")
	public String myprofil() {
		return "mypage/myprofil";
	}

	@RequestMapping("/mypage/myprofil2")
	public String myprofil2() {
		return "mypage/myprofil2";
	}
}
