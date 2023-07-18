package com.java.controller;

import java.net.URLEncoder;

import java.util.ArrayList;





import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.java.dto.ClubDto;
import com.java.dto.MemberDto;
import com.java.service.AdminService;


@Controller
public class AdminController {

	
	@Autowired AdminService adminService;
	
	
	@RequestMapping("/admin/adminStatic")
	public String adminStatic() {
		return "admin/adminStatic";
	}

	
	
	 @RequestMapping("/admin/totalUser") 
	 public String totalUser(Model model) {
	 ArrayList<MemberDto> list = new ArrayList<>();
	 
	 System.out.println("개수보기 : "+list.size()); //회원정보 전체 들고오기 list =
	 
	 list = adminService.selectAll();
	 model.addAttribute("list",list);
	  
	 	return "admin/totalUser"; 
	 }

	 @RequestMapping("/admin/totalWrite") 
	 public String totalWrite(Model model) {
		 ArrayList<ClubDto> clublist = new ArrayList<>();
		 
		 System.out.println("clublist 개수 : "+clublist.size());
		 
		 clublist = adminService.selectClubAll();
		 model.addAttribute("clublist",clublist);
		 
		 return "admin/totalWrite"; 
	 }
	 
	
	@RequestMapping("/admin/totalWriteModify")
	public String totalWriteModify() {
		return "admin/totalWriteModify";
	}
	
	@RequestMapping("/admin/totalUserModify")
	public String totalUserModify() {
		return "admin/totalUserModify";
	}

	

	

}
