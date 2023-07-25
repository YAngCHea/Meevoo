package com.java.service;

import java.util.ArrayList;


import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.java.dto.SportDto;
import com.java.dto.SportPickDto;
import com.java.dto.SportReviewDto;
import com.java.dto.SportReviewReportDto;
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
		
		return map;
	}

	@Override
	public ArrayList<SportReviewDto> selectReAll(int sfno) {
		// 게시글 하단 리뷰 전체 가져오기
		ArrayList<SportReviewDto> sreList = sportMapper.selectReAll(sfno);
		return sreList;
	}

	@Override
	public SportReviewDto reviewInsert(SportReviewDto sreDto) {
		// 게시글 하단 리뷰저장 후
		sportMapper.reviewInsert(sreDto);
		
		//하단리뷰 1개 가져오기
		SportReviewDto sreviewdto = sportMapper.selectReOne(sreDto);
		return sreviewdto;
	}

	@Override
	public void reviewDelete(int sreno) {
		// 게시글 하단 리뷰 1개 삭제하기
		sportMapper.reviewDelete(sreno);
	}

	@Override //수정한 하단 리뷰 저장
	public SportReviewDto reviewUpdateSave(SportReviewDto sreDto) {
		// 1개 수정
		sportMapper.reviewUpdateSave(sreDto);
		
		//1개 가져오기
		SportReviewDto sreviewdto = sportMapper.selectReOne(sreDto);
		return sreviewdto;
	}

	@Override
	public void insertReportOne(SportReviewReportDto srerepDto) {
		
		// 리뷰글에 대한 신고글 1개 작성
		sportMapper.insertReportOne(srerepDto);
	}

	@Override
	public HashMap<String, Object> selectSrenoOne(int sreno) {
		
		//리뷰글 번호 가져오기
		HashMap<String, Object> map = new HashMap<>();
		
		//게시글 1개 가져오기
		SportReviewDto sreDto = sportMapper.selectSrenoOne(sreno);
		map.put("sreDto", sreDto);
		
		return map;
	}

	@Override
	public SportPickDto sportPick(SportPickDto spickDto) {
		// 시설물 찜하기 등록
		sportMapper.sportPick(spickDto);
		
		//찜하기 1개 가져오기
		SportPickDto pickdto = sportMapper.selectSpOne(spickDto);
		
		System.out.println("찜한 id"+spickDto.getId());
		System.out.println("찜한 id"+spickDto.getSfno());
		System.out.println("찜한 id"+spickDto.getSpickyn());
		
		return pickdto;
	}

	@Override
	public SportPickDto sportPickCancel(SportPickDto spickDto) {
		// 시설물 찜하기 취소
		sportMapper.sportPickCancel(spickDto);
		
		//찜하기 1개 가져오기
		SportPickDto pickdto = sportMapper.selectSpOne(spickDto);
		System.out.println("찜취소 id service :"+spickDto.getId());
		System.out.println("찜취소 sfno service :"+spickDto.getSfno());
		System.out.println("찜취소 spickyn service :"+spickDto.getSpickyn());
		return pickdto;
	}
	
	
	@Override
	public SportPickDto sportPickUpdate(SportPickDto spickDto) {
		// 3. 시설물 다시 찜하기
		sportMapper.sportPickUpdate(spickDto);
		//찜하기 1개 가져오기
		SportPickDto pickdto = sportMapper.selectSpOne(spickDto);
		System.out.println("다시 찜한 id service :"+spickDto.getId());
		System.out.println("다시 찜한 sfno service :"+spickDto.getSfno());
		System.out.println("다시 찜한 spickyn service :"+spickDto.getSpickyn());
		return pickdto;
	}
	
	
	@Override
	public ArrayList<SportPickDto> selectSpAll(int sfno) {
		// 찜하기 전체 가져오기
		ArrayList<SportPickDto> spickList = sportMapper.selectSpAll(sfno);
		return spickList;
	}


}
