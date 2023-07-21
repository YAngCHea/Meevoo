package com.java.dto;

import java.sql.Timestamp;



import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class ClubDto {
	
	private int cno;
	private String id;
	private String cnm;
	private Timestamp cwrdate;
	private String cimg;
	private int sfno;
	private String dongcate;
	private String cloc;
	private Timestamp cdodate;
	private String ccontent;
	private int ctotalpick;
	private int crecruitlimit;
	private String cnowrecruit;
	private String cnowstatus;
	private String scate;
	
}
