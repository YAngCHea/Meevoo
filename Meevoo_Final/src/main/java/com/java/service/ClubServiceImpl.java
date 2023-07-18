package com.java.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.java.dto.ClubDto;
import com.java.dto.PageDto;
import com.java.mapper.ClubMapper;

@Service
public class ClubServiceImpl implements ClubService {
	
	@Autowired ClubMapper clubMapper;

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

	

	
}
