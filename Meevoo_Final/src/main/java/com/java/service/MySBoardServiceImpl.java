package com.java.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.java.dto.CListCurrDto;
import com.java.dto.CListJoinDto;
import com.java.dto.PageDto;
import com.java.dto.SListCurrDto;
import com.java.dto.SListPickDto;
import com.java.dto.SListReviewDto;
import com.java.mapper.MySBoardMapper;

@Service
public class MySBoardServiceImpl implements MySBoardService {

	@Autowired MySBoardMapper mySBoardMapper;
	
	@Override //체육시설 - 찜한 리스트 전체 가져오기
	public HashMap<String, Object> selectSportPickAll(PageDto pageDto) {
		HashMap<String, Object> map = new HashMap<>();
		
		//페이지정보 메소드호출
		pageDto = pageMethod1(pageDto);
		
		//게시글 전체 가져오기
		ArrayList<SListPickDto> list = mySBoardMapper.selectSportPickAll(pageDto);
		
		map.put("list", list);
		map.put("pageDto", pageDto);
		
		return map;
	}
	
	//체육시설 - 찜한 리스트 페이지정보 메소드
	public PageDto pageMethod1(PageDto pageDto) {
		
		//전체 게시글 수 저장
		pageDto.setListCount(mySBoardMapper.selectListSPick());
		//최대 넘버링 페이지
		pageDto.setMaxPage((int)Math.ceil((double)pageDto.getListCount()/10));
		//시작 넘버링 페이지
		pageDto.setStartPage((int)((pageDto.getPage()-1)/10)*10+1);
		//끝 넘버링 페이지
		pageDto.setEndPage(pageDto.getStartPage()+10-1);
		//시작번호
		pageDto.setStartRow((pageDto.getPage()-1)*10+1);
		//끝나는번호
		pageDto.setEndRow(pageDto.getStartRow()+10-1);
		
		return pageDto;
	}

	@Override //체육시설 - 최근본 리스트 전체 가져오기
	public HashMap<String, Object> selectSportCurrAll(PageDto pageDto) {
		HashMap<String, Object> map = new HashMap<>();
		
		//페이지 정보 메소드 호출
		pageDto = pageMethod2(pageDto);
		
		ArrayList<SListCurrDto> list = mySBoardMapper.selectSportCurrAll(pageDto);
		
		map.put("list", list);
		map.put("pageDto", pageDto);
		
		return map;
	}
	
	//체육시설 - 찜한 리스트 페이지정보 메소드
	public PageDto pageMethod2(PageDto pageDto) {
	
		//전체 게시글 수 저장
		pageDto.setListCount(mySBoardMapper.selectListSCurr());
		//최대 넘버링 페이지
		pageDto.setMaxPage((int)Math.ceil((double)pageDto.getListCount()/10));
		//시작 넘버링 페이지
		pageDto.setStartPage((int)((pageDto.getPage()-1)/10)*10+1);
		//끝 넘버링 페이지
		pageDto.setEndPage(pageDto.getStartPage()+10-1);
		//시작번호
		pageDto.setStartRow((pageDto.getPage()-1)*10+1);
		//끝나는번호
		pageDto.setEndRow(pageDto.getStartRow()+10-1);
		
		return pageDto;
	}

	@Override //체육시설 - 후기 작성한 리스트 전체 가져오기
	public HashMap<String, Object> selectSportReviewAll(PageDto pageDto) {
		HashMap<String, Object> map = new HashMap<>(); 
				
		pageDto = pageMethod3(pageDto);
		
		ArrayList<SListReviewDto> list = mySBoardMapper.selectSportReviewAll(pageDto);
		
		map.put("list", list);
		map.put("pageDto", pageDto);
		
		return map;
	}

	//체육시설 - 후기 작성한 리스트 페이지정보 메소드
	public PageDto pageMethod3(PageDto pageDto) {
		
		//전체 게시글 수 저장
		pageDto.setListCount(mySBoardMapper.selectListSReview());
		//최대 넘버링 페이지
		pageDto.setMaxPage((int)Math.ceil((double)pageDto.getListCount()/10));
		//시작 넘버링 페이지
		pageDto.setStartPage((int)((pageDto.getPage()-1)/10)*10+1);
		//끝 넘버링 페이지
		pageDto.setEndPage(pageDto.getStartPage()+10-1);
		//시작번호
		pageDto.setStartRow((pageDto.getPage()-1)*10+1);
		//끝나는번호
		pageDto.setEndRow(pageDto.getStartRow()+10-1);
		
		return pageDto;
	}

	@Override //후기 작성한 리스트 1개 삭제
	public void deleteSReview(int sfno) {
		mySBoardMapper.deleteSReview(sfno);
		
	}
}
