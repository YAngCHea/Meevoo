package com.java.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.java.dto.ClubReportDto;
import com.java.dto.PageDto;
import com.java.dto.SearchDto;
import com.java.mapper.ClubReportMapper;

@Service
public class ClubReportServiceImpl implements ClubReportService {

	@Autowired ClubReportMapper clubReportMapper;
	
	//1.clubReportList 가져오기
	@Override
	public HashMap<String, Object> selectAll(PageDto pagedto, SearchDto search) {
		//게시글 전체 가져오기
		HashMap<String, Object> map = new HashMap<>();
		
		
		System.out.println("impl"+pagedto.getStartPage());
		
		
		//page정보 메소드 호출하기
		pagedto = pageMethod(pagedto,search);
		
		//endPage가 최대페이지보다 더 크면 최대페이지까지만 노출
		if(pagedto.getEndPage() > pagedto.getMaxPage()) pagedto.setEndPage(pagedto.getMaxPage());
		
		//모임 전체 가져오기
		ArrayList<ClubReportDto> list = clubReportMapper.selectAll(pagedto,search);

		map.put("list", list);
		map.put("pagedto", pagedto);
		
		map.put("page", pagedto.getPage());
		map.put("listCount", pagedto.getListCount());
		map.put("startPage", pagedto.getStartPage());
		map.put("endPage",pagedto.getEndPage());
		map.put("maxPage",pagedto.getMaxPage());
		map.put("category",search.getCategory());
		map.put("search_input",search.getSearch_input());
		
		System.out.println("impl ListCount" + pagedto.getListCount());
		
		return map;
	}

	private PageDto pageMethod(PageDto pagedto, SearchDto search) {
		//전체게시글 수-142,현재페이지,최대페이지,시작페이지,끝페이지 1-시작,2,3,4,5-현재,6,7,8,9,10-끝  15-최대
		//시작번호,끝나는번호 1-10,11-20,21-30
		//전체게시글 수 저장
		pagedto.setListCount(clubReportMapper.selectListCount(search));
		// 최대 넘버링페이지
		pagedto.setMaxPage((int)Math.ceil((double)pagedto.getListCount()/10));
		// 시작 넘버링페이지
		pagedto.setStartPage((int)((pagedto.getPage()-1)/10)*10 + 1);
		// 끝 넘버링페이지
		pagedto.setEndPage(pagedto.getStartPage()+10-1);
		// 시작번호
		pagedto.setStartRow((pagedto.getPage()-1)*10+1);
		// 끝나는번호
		pagedto.setEndRow(pagedto.getStartRow()+10-1);
		return pagedto;
	}

	// 2. clubReportView 상세페이지
	  
	@Override
	public HashMap<String, Object> selectOne(ClubReportDto crdto) {

		HashMap<String, Object> map1 = new HashMap<>();

		// clubReport 1개 가져오기 
		ClubReportDto crdto1 = clubReportMapper.selectOne(crdto);
		map1.put("crdto1", crdto1);

		
		return map1;
	}
	 
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
