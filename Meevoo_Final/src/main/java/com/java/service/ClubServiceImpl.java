package com.java.service;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

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
		
		//endPage가 최대페이지보다 더 크면 최대페이지까지만 노출
		if(pageDto.getEndPage()>pageDto.getMaxPage()) pageDto.setEndPage(pageDto.getMaxPage());
		
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
	
	@Override // 필터 input 반영해서 모임목록 가져오기 (필터검색)
	public ArrayList<ClubDto> selectClubFilter(ClubDto clubDto) {
		ArrayList<ClubDto> filterList = clubMapper.selectClubFilter(clubDto); 
		return filterList;
	}


	@Override //모임목록 글 1개 저장
	public void insertClub(ClubDto cdto, List<MultipartFile> files) {
		
		String cimg = ""; //파일저장이름
		String tempFile = ""; //임시사용이름
		String oriFile = ""; //원본파일이름
		String[] cimgs = new String[3];
		
		for(int i=0; i<3; i++) {  //files.size() :위치가 중요하면 사용함 -> 이미지 등록 개수 만큼 저장
			tempFile = "";		//초기화
			if(!files.get(i).isEmpty()) {
				oriFile = files.get(i).getOriginalFilename();  //원본파일이름 저장
				UUID uuid = UUID.randomUUID(); //랜덤번호
				tempFile = uuid + "_" + oriFile;
				String uploadURL = "c:/upload/";	//파일 저장 위치
				File f = new File(uploadURL+tempFile);
				try { 
					files.get(i).transferTo(f);		//파일을 서버에 저장
				} catch (Exception e) { e.printStackTrace(); } 
			}//if
			
			//3번 돈것 파일이름을 1개로 합치기
			if(i==0) cimg = tempFile;
			else cimg += ","+tempFile;
			
			
			// dto에 cimg이름 저장
			cdto.setCimg(cimg);
			
		}//for
		
		//파일이름 출력
		System.out.println("파일이름 1개로 묶은 이름 : "+cimg);
		
		//파일이름 1개로 묶은 이름 String 배열로 분리
		cimgs = cimg.split(",");
		
		System.out.println("cimgs 배열 출력 :"+Arrays.toString(cimgs));
		System.out.println("cimgs 배열 개수 :"+cimgs.length);
		
		//mapper로 전송 - 모임목록 글 1개 저장
		clubMapper.insertClub(cdto);
		
	}//모임목록 글 1개 저장




	

	
}
