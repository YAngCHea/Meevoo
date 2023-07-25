package com.java.dto;

import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class SportPickDto {
	
	private int spickno;
	private String id;
	private int sfno;
	private String spickyn;
	private Timestamp spickdate;

}
