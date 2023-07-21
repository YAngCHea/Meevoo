package com.java.dto;

import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class CListCurrDto {

	private int ccurrno;
	private String id;
	private int cno;
	private String cnm;
	private String dongcate;
	private Timestamp ccurrdate;
	private Timestamp cdodate;
	
	
}
