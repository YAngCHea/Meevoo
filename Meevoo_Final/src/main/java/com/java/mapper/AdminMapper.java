package com.java.mapper;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.web.multipart.MultipartFile;

import com.java.dto.ClubDto;
import com.java.dto.ClubReportDto;
import com.java.dto.MemberDto;
import com.java.dto.PageDto;
import com.java.dto.SportReportDto;
import com.java.dto.UserGraphDto;
import com.java.dto.WriteGraphDto;

@Mapper
public interface AdminMapper {


	//전체 회원 하단 넘버링 
	ArrayList<MemberDto> selectAll(PageDto pageDto);

	//전체 회원 가져오기
	int selectMemberListCount();

	//전체 모임 하단 넘버링 
	ArrayList<ClubDto> selectClubAll(PageDto pageDto1);

	//전체 모임 가져오기
	int selectClubListCount();

	//회원 그래프 데이터 생성하기
	List<UserGraphDto> selectUserGraphAll();

	//게시물 그래프 데이터 생성하기
	List<WriteGraphDto> selectWriteGraphAll();

	//스포츠 시설 신고 게시물 1개 가져오기
	SportReportDto selectSROne(int srepno);

	//스포츠 신고 게시물 상위 5개
	ArrayList<SportReportDto> selectSFive();

	//모임 신고 게시물 1개 가져오기
	ClubReportDto selectCROne(int crepno);

	//모임 신고 게시물 상위 5개
	ArrayList<ClubReportDto> selectCFive();

	//회원 추가하기
	void insertMember(MemberDto memberDto);

	//수정할 회원 가져오기
	MemberDto selectTUMOne(String id);

	//회원 수정사항 저장하기
	void updateTUMOne(MemberDto mdto);

	//회원 탈퇴처리
	void deleteTUMOne(MemberDto mdto);




	

	
}
