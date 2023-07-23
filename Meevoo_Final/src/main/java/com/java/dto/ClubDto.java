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
	private int cnowrecruit;
	private String cnowstatus;
	private String scate;
	private int dateDifference;		//모임 목록 필터검색시 D-day 반영 변수

}
