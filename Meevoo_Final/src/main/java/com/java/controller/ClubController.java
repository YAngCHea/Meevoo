package com.java.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ClubController {
	
	@RequestMapping("/club/club")
	public String club() {
		return "club/club";
	}
	
	@RequestMapping("/club/cWrite")
	public String cWrite() {
		return "club/cWrite";
	}
	
	@RequestMapping("/club/cView")
	public String cView() {
		return "club/cView";
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
