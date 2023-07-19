package com.java.service;

import java.util.ArrayList;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.java.dto.SportDto;
import com.java.mapper.SportMapper;

@Service
public class SportServiceImpl implements SportService {

	@Autowired
	SportMapper sportMapper;

	@Override
	public HashMap<String, Object> selectAll(int page) {
		//게시글 전체 가져오기
		
		HashMap<String, Object> map = new HashMap<>();
		
		//게시글 전체개수
		int listCount = sportMapper.selectListCount();

		//최대페이지
		int maxPage = (int)Math.ceil((double)listCount/10); // 최대페이지(전체 게시물/10 -> 4개page)
		int startPage = (int)((page-1)/10)*10 + 1; // 시작페이지 1
		int endPage = startPage+10-1; // 마지막페이지
		
		int startRow = (page-1)*10+1; //1page : 1-10, 2page : 11-20
		int endRow = startRow+10-1;
		
		//endPage가 maxPage보다 더 크면 maxPage만 노출
		if(endPage>maxPage) endPage=maxPage;
		ArrayList<SportDto> list = sportMapper.selectAll(startRow,endRow);
		
		map.put("list", list);
		map.put("listCount", listCount);
		map.put("maxPage", maxPage);
		map.put("startPage", startPage);
		map.put("endPage", endPage);
		map.put("page", page);
		
		return map;
	}

	@Override
	public HashMap<String, Object> selectOne(int sfno) {

		HashMap<String, Object> map = new HashMap<>();
		
		//게시글 1개 가져오기
		SportDto sdto = sportMapper.selectOne(sfno);
		map.put("sdto", sdto);
		//이전글 1개 가져오기
		SportDto prevDto = sportMapper.selectPrevOne(sfno);
		map.put("prevDto", prevDto);
		//다음글 1개 가져오기
		SportDto nextDto = sportMapper.selectNextOne(sfno);
		map.put("nextDto", nextDto);
		
		return map;
	}
	
	
//	@Override
//	public ArrayList<SportDto> selectAll() {
//		ArrayList<SportDto> list = new ArrayList<>();
//
//		// 게시글 전체 가져오기
//		list = sportMapper.selectAll();
//		return list;
//	}
//
//	@Override
//	public SportDto selectOne(int fcltyno) {
//		// 게시글 1개 가져오기 SportDto
//		SportDto sdto = sportMapper.selectOne(fcltyno);
//		return sdto;
//	}

}
