package com.java.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminController {

	@RequestMapping("/admin/adminStatic")
	public String adminStatic() {
		return "admin/adminStatic";
	}

	@RequestMapping("/notice/notice")
	public String notice() {
		return "notice/notice";
	}

	@RequestMapping("/notice/FAQ")
	public String FAQ() {
		return "notice/FAQ";
	}
	
	@RequestMapping("/notice/QnA")
	public String QnA() {
		return "notice/QnA";
	}

	@RequestMapping("/admin/totalUser")
	public String totalUser() {
		return "admin/totalUser";
	}
}
