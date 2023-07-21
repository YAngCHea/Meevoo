package com.java.dto;

import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class CListPickDto {

	private int cpickno;
	private int cno;
	private String id;
	private Timestamp cpickdate;
	private String cpickyn;
	private String cnm;
	private String dongcate;
	private Timestamp cdodate;
	
}
