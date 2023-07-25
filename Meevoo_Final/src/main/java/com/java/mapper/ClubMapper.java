package com.java.mapper;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.java.dto.ClubDto;
import com.java.dto.ClubSearch;
import com.java.dto.PageDto;

@Repository
@Mapper
public interface ClubMapper {
	
	//모임목록 전체 가져오기
	public ArrayList<ClubDto> selectClubAll(PageDto pageDto);

	//전체 모임목록 글 수
	public int selectListCount();
	
	//모임목록 추천 가져오기 1. 로그인 전, 찜하기 많고, 최근 게시글 중 모집중인 모임목록 2개
	public ArrayList<ClubDto> selectClubRecsLogout(); 
	
	//모임목록 추천 가져오기 2. 로그인한 사람의 관심지역, 관심종목과 일치하는 모집중인 모임목록 2개
	public ArrayList<ClubDto> selectClubRecsLogin(String id);

	// 모임목록 1개 가져오기
	public ClubDto selectClubOne(int cno);
	
	// 필터 input 반영해서 모임목록 가져오기 (필터검색)
	public ArrayList<ClubDto> selectClubFilter(ClubDto clubDto);






}
