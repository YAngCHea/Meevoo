package com.java.dto;

import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor //전체생성자
@NoArgsConstructor //기본생성자
@Data //getter, setter
public class QnADto {

	
	private int qnano;
	private String id;
	private String qnatitle;
	private Timestamp qnadate;
	private String qnacontent;
	private String qnare;
	private Timestamp qnaredate;
	private int qnapw;
	private String qnastatus;
	private String newdate;
}
