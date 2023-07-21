package com.java.dto;

import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class CListJoinDto {

	private int cjoinriviewno;
	private int cno;
	private String id;
	private String cnm;
	private String dongcate;
	private Timestamp cdodate;
	private String giveid;
	
	
}
