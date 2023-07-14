package com.java.dto;

import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor //전체생성자
@NoArgsConstructor //기본생성자
@Data //getter, setter
public class MemberDto {
	
	private String id;
	private int pw;
	private String usernm;
	private String nicknm;
	private int birth;
	private String email;
	private String gender;
	private String dongcate;
	private String scate;
	private String userimg;
	private String selfintro;
	private Timestamp joindate;
	private int nowjoin;
	private int totaltemp;
	private String addr;
	
}
