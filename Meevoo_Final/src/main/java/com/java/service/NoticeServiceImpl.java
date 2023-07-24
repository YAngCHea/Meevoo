package com.java.service;

import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.java.dto.ClubDto;
import com.java.dto.FAQDto;
import com.java.dto.MemberDto;
import com.java.dto.NoticeDto;
import com.java.dto.PageDto;
import com.java.dto.QnADto;
import com.java.mapper.NoticeMapper;

@Service
public class NoticeServiceImpl implements NoticeService {

	@Autowired NoticeMapper noticeMapper;
	



	// 1. 전체 회원 하단 넘버링
	@Override
	public HashMap<String, Object> selectNoticeAll(PageDto pageDto, String search_input) {

		HashMap<String, Object> map = new HashMap<>();
		//페이지 정보 메소드 호출하기
		pageDto = pageMethod(pageDto,search_input);
		
		//모임 전체 가져오기
		ArrayList<NoticeDto> nlist = noticeMapper.selectNoticeAll(pageDto, search_input);
		
		System.out.println("Impl nlist : "+nlist);
		
		map.put("nlist", nlist);
		map.put("search_input", search_input);
		map.put("pageDto", pageDto);
		return map;
	}

	//페이지정보 메소드
	public PageDto pageMethod(PageDto pageDto, String search_input) {
			
			//전체게시글 수-142,현재페이지,최대페이지,시작페이지,끝페이지 1-시작,2,3,4,5-현재,6,7,8,9,10-끝  15-최대
			//시작번호,끝나는번호 1-10,11-20,21-30
			//전체게시글 수 저장
			pageDto.setListCount(noticeMapper.selectNoticeListCount());
			// 최대 넘버링페이지
			pageDto.setMaxPage((int)Math.ceil((double)pageDto.getListCount()/10));
			// 시작 넘버링페이지
			pageDto.setStartPage((int)((pageDto.getPage()-1)/10)*10 + 1);
			// 끝 넘버링페이지
			pageDto.setEndPage(pageDto.getStartPage()+10-1);
			// 시작번호
			pageDto.setStartRow((pageDto.getPage()-1)*10+1);
			// 끝나는번호
			pageDto.setEndRow(pageDto.getStartRow()+10-1);
			
			return pageDto;
		}

// 2. 공지사항 상세페이지
	@Override
	public HashMap<String, Object> selectNoticeOne(int notino) {
		HashMap<String, Object> map = new HashMap<>();
		
		NoticeDto ndto = noticeMapper.selectNoticeOne(notino);
		map.put("ndto", ndto);
		
		return map;
	}
// 공지사항 추가하기
	@Override
	public void insertNotice(NoticeDto ndto, MultipartFile files) {
		String notiimg = "";  //파일 저장 이름
		String tempFile = ""; //임시 사용 이름
		String oriFile = "";  //원본 파일 이름
		
		if(!notiimg.isEmpty()) {
			oriFile = files.getOriginalFilename();
			UUID uuid = UUID.randomUUID();  //랜덤번호
			tempFile = uuid + "_" + oriFile;   //이름을 임의로 저장한다
			String uploadURL = "c:/upload/";  //저장위치
			File f = new File(uploadURL + tempFile);
			try { files.transferTo(f);
			} catch (Exception e) {e.printStackTrace();}
		}//if
		
		//dto에 notiimg 저장하기
		ndto.setNotiimg(notiimg);
		
		//파일이름 출력
		System.out.println("파일이름 출력해보자 : " + notiimg);
		
		//mapper에 전송
		noticeMapper.insertNotice(ndto);
			
		
	}

	// 1) 수정할 공지사항 불러오기
	@Override
	public NoticeDto selectNMOne(int notino) {
		NoticeDto ndto = noticeMapper.selectNMOne(notino);
		return ndto;
	}

	// 2) 공지사항 수정한거 저장하기
	@Override
	public void updateNMOne(NoticeDto ndto, MultipartFile file) {
		
		noticeMapper.updateNMOne(ndto);
		
		String notiimg = "";  //파일 저장 이름
		String tempFile = ""; //임시 사용 이름
		String oriFile = "";  //원본 파일 이름
		
		if(!notiimg.isEmpty()) {
			oriFile = file.getOriginalFilename();
			UUID uuid = UUID.randomUUID();  //랜덤번호
			tempFile = uuid + "_" + oriFile;   //이름을 임의로 저장한다
			String uploadURL = "c:/upload/";  //저장위치
			File f = new File(uploadURL + tempFile);
			try { file.transferTo(f);
			} catch (Exception e) {e.printStackTrace();}
		}//if
		
		//dto에 notiimg 저장하기
		ndto.setNotiimg(notiimg);
		
		//파일이름 출력
		System.out.println("파일이름 출력해보자 : " + notiimg);
		
	}

	//공지사항 삭제하기
	@Override
	public void deleteOne(int notino) {
		noticeMapper.deleteOne(notino);
		
	}
// == FAQ ==================================================================
// 1. 전체 FAQ 하단 넘버링 --------------------------------------------------------
	@Override
	public HashMap<String, Object> selectFAQAll(PageDto pageDto) {
		HashMap<String, Object> map1 = new HashMap<>();
		//페이지 정보 메소드 호출하기
		pageDto = pageMethod(pageDto);
		
		//모임 전체 가져오기
		ArrayList<NoticeDto> faqlist = noticeMapper.selectFAQAll(pageDto);
		
		map1.put("faqlist", faqlist);
		map1.put("pageDto", pageDto);
		return map1;
	}

	//페이지정보 메소드
	public PageDto pageMethod(PageDto pageDto) {
			
			//전체게시글 수-142,현재페이지,최대페이지,시작페이지,끝페이지 1-시작,2,3,4,5-현재,6,7,8,9,10-끝  15-최대
			//시작번호,끝나는번호 1-10,11-20,21-30
			//전체게시글 수 저장
			pageDto.setListCount(noticeMapper.selectNoticeListCount());
			// 최대 넘버링페이지
			pageDto.setMaxPage((int)Math.ceil((double)pageDto.getListCount()/10));
			// 시작 넘버링페이지
			pageDto.setStartPage((int)((pageDto.getPage()-1)/10)*10 + 1);
			// 끝 넘버링페이지
			pageDto.setEndPage(pageDto.getStartPage()+10-1);
			// 시작번호
			pageDto.setStartRow((pageDto.getPage()-1)*10+1);
			// 끝나는번호
			pageDto.setEndRow(pageDto.getStartRow()+10-1);
			
			return pageDto;
		}

// 2. FAQ 추가하기(글쓰기)
	@Override
	public void insertFAQ(FAQDto fdto) {
		noticeMapper.insertFAQ(fdto);
		
	}
// 3. 수정할 FAQ 불러오기
	@Override
	public FAQDto selectFMOne(int faqno) {
		FAQDto fdto = noticeMapper.selectFMOne(faqno);
		return fdto;
	}
// 3. 수정한 FAQ 저장하기
	@Override
	public void updateFMOne(FAQDto fdto) {
		noticeMapper.updateFMOne(fdto);
		
	}
// 4. FAQ 삭제하기
	@Override
	public void deleteFAQOne(int faqno) {
		noticeMapper.deleteFAQOne(faqno);
		
	}

//== QnA ========================================================================
	
// 1. QnA 전체 가져오기
	@Override
	public HashMap<String, Object> selectQnAAll(PageDto pageDto, String search_input) {
		HashMap<String, Object> map2 = new HashMap<>();
		//페이지 정보 메소드 호출하기
		pageDto = pageMethod1(pageDto,search_input);
		
		//모임 전체 가져오기
		ArrayList<QnADto> qnalist = noticeMapper.selectQnAAll(pageDto, search_input);
		
		map2.put("qnalist", qnalist);
		map2.put("search_input", search_input);
		map2.put("pageDto", pageDto);
		return map2;
	}
	
	//페이지정보 메소드
		public PageDto pageMethod1(PageDto pageDto, String search_input) {
				
			//전체게시글 수-142,현재페이지,최대페이지,시작페이지,끝페이지 1-시작,2,3,4,5-현재,6,7,8,9,10-끝  15-최대
			//시작번호,끝나는번호 1-10,11-20,21-30
			//전체게시글 수 저장
			pageDto.setListCount(noticeMapper.selectQnAListCount());
			// 최대 넘버링페이지
			pageDto.setMaxPage((int)Math.ceil((double)pageDto.getListCount()/10));
			// 시작 넘버링페이지
			pageDto.setStartPage((int)((pageDto.getPage()-1)/10)*10 + 1);
			// 끝 넘버링페이지
			pageDto.setEndPage(pageDto.getStartPage()+10-1);
			// 시작번호
			pageDto.setStartRow((pageDto.getPage()-1)*10+1);
			// 끝나는번호
			pageDto.setEndRow(pageDto.getStartRow()+10-1);
			
			return pageDto;
		}
// 2. QnA 상세페이지 가져오기
		@Override
		public HashMap<String, Object> selectQnAOne(int qnano) {
			HashMap<String, Object> map2 = new HashMap<>();
			
			QnADto qdto = noticeMapper.selectQnAOne(qnano);
			map2.put("qdto", qdto);
			
			return map2;
		}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
