package com.java.service;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.java.dto.ClubDto;
import com.java.dto.PageDto;
import com.java.mapper.ClubMapper;

@Service
public class ClubServiceImpl implements ClubService {
	
	@Autowired ClubMapper clubMapper; //객체선언
	@Autowired HttpSession session;

	@Override //모임목록 전체 가져오기 - 현재페이지
	public HashMap<String, Object> selectClubAll(PageDto pageDto) {
		HashMap<String, Object> map = new HashMap<>();
		
		//페이지 정보 메소드 호출
		pageDto = pageMethod(pageDto);
		
		//모임목록 전체 가져오기
		ArrayList<ClubDto> list = clubMapper.selectClubAll(pageDto);
		
		map.put("list", list);
		map.put("pageDto", pageDto);
		
		return map;
	}
	
	//페이지 정보 메소드
	public PageDto pageMethod(PageDto pageDto) {
		
		// 전체 모임목록 수 저장
		pageDto.setListCount(clubMapper.selectListCount());
		// 최대 페이지
		pageDto.setMaxPage((int)Math.ceil((double)pageDto.getListCount()/10));
		// 처음 넘버링 페이지
		pageDto.setStartPage((int)((pageDto.getPage()-1)/10)*10 + 1);
		// 마지막 넘버링 페이지
		pageDto.setEndPage(pageDto.getStartPage()+10-1);
		// 페이지 최초 모임목록글 번호
		pageDto.setStartRow((pageDto.getPage()-1)*10+1);
		// 페이지 마지막 모임목록글 번호
		pageDto.setEndRow(pageDto.getStartRow()+10-1);
		
		return pageDto;
		
	}

	@Override //모임목록 추천 가져오기 1. 로그인 전, 찜하기 많고, 최근 게시글 중 모집중인 모임목록 2개
	public ArrayList<ClubDto> selectClubRecsLogout() {
		
		//모임목록 추천 가져오기 2. 로그인 전, 찜하기 많고, 최근 게시글 중 모집중인 모임목록 2개
		ArrayList<ClubDto> recsLogoutList = clubMapper.selectClubRecsLogout();
		return recsLogoutList;
	}
	
	@Override //모임목록 추천 가져오기 2. 로그인한 사람의 관심지역, 관심종목과 일치하는 모집중인 모임목록 2개
	public ArrayList<ClubDto> selectClubRecsLogin(String id) { // java에서 함수의 매개변수를 실어서 보내는건데 (값) 거기에는 type이 필요함
		
		//모임목록 추천 가져오기 1. 로그인한 사람의 관심지역, 관심종목과 일치하는 모집중인 모임목록 2개
		ArrayList<ClubDto> recsLoginList = clubMapper.selectClubRecsLogin(id); //위에서 변수가 선언 되었기 때문에 id만쓰는것 
		return recsLoginList;
	}

	@Override // 모임목록 1개 가져오기
	public ClubDto selectClubOne(int cno) {
		ClubDto cdto = clubMapper.selectClubOne(cno);
		return cdto;
	}



	

	
}
