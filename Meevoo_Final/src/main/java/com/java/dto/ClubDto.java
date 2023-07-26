package com.java.dto;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class ClubDto {
	
	//------------------------------------------- from clublist ----------------------------------------//
	private int cno;
	private String id;
	private String cnm;
	private Date cwrdate;
	private String[] cimgs;		//list 출력할때 사용하는 이름: 배열로 한번에 저장
	private String cimg;		//파일저장이름
	private int sfno;
	//private String dongcate;
	private String cloc;
	private Date cdodate;
	private String dateStr;		//jsp단에서 submit시 'yyyy-mm-ddT12:30'가 String으로 전달 되지만 일단 받고 controller단에서 형변환에 활용할 목적으로 만든 임시 변수 
	private String ccontent;
	private int ctotalpick;
	private int crecruitlimit;
	private int cnowrecruit;
	private String cnowstatus;
	//private String scate;
	//------------------------------------------- from clublist 끝---------------------------------------//
	
	//------------------------------------------- from clublist / 임시변수 --------------------------------//
	private int dateDifference;		//모임 목록 필터검색시 D-day 반영 변수
	//------------------------------------------- from clublist / 임시변수 끝 -----------------------------//
	
	//------------------------------------------- from userlist ----------------------------------------//
	private String usernm;			//clublist에서 userlist 외래키로 join시 '사용자 이름'
	private String nicknm;			//clublist에서 userlist 외래키로 join시 '사용자 닉네임'
	private String userimg;			//clublist에서 userlist 외래키로 join시 '사용자 프로필사진'
	private String selfintro;		//clublist에서 userlist 외래키로 join시 '사용자 자기소개 문구'
	private float totaltemp;		//clublist에서 userlist 외래키로 join시 '사용자 온도'
	//------------------------------------------- from userlist 끝 --------------------------------------//
	
	//------------------------------------------- from sportlist ---------------------------------------//
	private String sfnm;			//clublist에서 sportlist 외래키로 join시 '체육시설 이름'
	private String scate;			//clublist에서 sportlist 외래키로 join시 '체육시설 운동종목'
	private String dongcate;		//clublist에서 sportlist 외래키로 join시 '체육시설 동이름'
	private String addr;			//clublist에서 sportlist 외래키로 join시 '체육시설 주소'
	private String wifi;			//clublist에서 sportlist 외래키로 join시 '체육시설 편의시설 와이파이 여부'
	private String pet;				//clublist에서 sportlist 외래키로 join시 '체육시설 편의시설 반려동물 여부'
	private String parking;			//clublist에서 sportlist 외래키로 join시 '체육시설 편의시설 주차장 여부'
	private String slope;			//clublist에서 sportlist 외래키로 join시 '체육시설 편의시설 입구경사로 여부'
	private String imgurl1;			//clublist에서 sportlist 외래키로 join시 '체육시설 이미지1'
	//------------------------------------------- from sportlist 끝 ------------------------------------//
	

}
