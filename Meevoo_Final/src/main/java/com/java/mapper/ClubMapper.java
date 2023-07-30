package com.java.mapper;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;
import org.springframework.web.multipart.MultipartFile;

import com.java.dto.ClubDto;
import com.java.dto.ClubJoinUserDto;
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

	//모임목록 글 1개 저장
	void insertClub(ClubDto cdto);
	
	
	// 클럽 가입한 아이디 Count(cno,sessionId)
	public int selectcjCount(int cno, String id);
	// 클럽 가입 목록 전체 가져오기
	public ArrayList<ClubJoinUserDto> selectcjAll(int cno);
	// 해당 클럽에 가입 한 총 인원수
	public int updateClubAll(int cno);
	
	// 모임 신청하기
	public void cjoinUser(ClubJoinUserDto cjoinuserDto);
	// 모임 신청한거 1개 가져오기
	public ClubJoinUserDto selectCjuOne(ClubJoinUserDto cjoinuserDto);
	
	
	 





}
