package com.java.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class FController {

	@RequestMapping("/index")
	public String index() {
		return "index";
	}
	
	@RequestMapping("/generic")
	public String generic() {
		return "generic";
	}
	
	@RequestMapping("/elements")
	public String elements() {
		return "elements";
	}
	
	@RequestMapping("/main")
	public String main() {
		return "main";
	}

}
