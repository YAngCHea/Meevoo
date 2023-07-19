package com.java.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.java.dto.SportDto;
import com.java.dto.SportReportDto;
import com.java.mapper.SportReportMapper;

@Service
public class SportReportServiceImpl implements SportReportService {

	@Autowired
	SportReportMapper sportReportMapper;
	
	@Override
	public HashMap<String, Object> selectAll(int page, String category, String srep_word) {
		
		// 문의글 전체 가져오기
		HashMap<String, Object> map = new HashMap<>();
		
		//게시글 전체개수
		int listCount = sportReportMapper.selectListCount(category,srep_word);
		
		//최대페이지
		int maxPage = (int)Math.ceil((double)listCount/20); // 최대페이지(전체 게시물/20 -> 15개page)
		int startPage = (int)((page-1)/20)*20 + 1; // 시작페이지 1
		int endPage = startPage+20-1; // 마지막페이지
		
		int startRow = (page-1)*20+1; //1page : 1-20, 2page : 21-40
		int endRow = startRow+20-1;
		
		//endPage가 maxPage보다 더 크면 maxPage만 노출
		if(endPage>maxPage) endPage=maxPage;
		ArrayList<SportReportDto> list = sportReportMapper.selectAll(startRow,endRow,category,srep_word);
		
		map.put("list", list);
		map.put("listCount", listCount);
		map.put("maxPage", maxPage);
		map.put("startPage", startPage);
		map.put("endPage", endPage);
		map.put("page", page);
		map.put("category", category);
		map.put("srep_word", srep_word);
		
		return map;
	}

	@Override
	public HashMap<String,Object> selectOne(int srepno) {
		
		HashMap<String, Object> map = new HashMap<>();
		
		// 문의글 1개 가져오기
		SportReportDto srdto = sportReportMapper.selectOne(srepno);
		map.put("srdto", srdto);
//		//이전글 1개 가져오기
//		SportReportDto prevDto = sportReportMapper.selectPrevOne(srepno);
//		map.put("prevDto", prevDto);
//		//다음글 1개 가져오기
//		SportReportDto nextDto = sportReportMapper.selectNextOne(srepno);
//		map.put("nextDto", nextDto);
		
		return map;
	}

	@Override
	public ArrayList<SportDto> selectSfno() {
		ArrayList<SportDto> list = new ArrayList<>();

		// 문의글 작성으로 인한 시설번호 전체 가져오기
		list = sportReportMapper.selectSfno();
		return list;
	}

	@Override
	public void insertOne(SportReportDto srdto) {
		// 문의글 1개 저장하기
		sportReportMapper.insertOne(srdto);
		System.out.println("쓴 글이 넘어 오는가? : "+srdto);
	}

	@Override
	public void deleteOne(int srepno) {
		
		// 문의글 삭제하기
		sportReportMapper.deleteOne(srepno);
	}


}
