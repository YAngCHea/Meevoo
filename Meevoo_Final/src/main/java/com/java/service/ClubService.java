package com.java.service;

import java.util.ArrayList;
import java.util.HashMap;

import com.java.dto.ClubDto;
import com.java.dto.PageDto;

public interface ClubService {

	//모임목록 전체 가져오기
	HashMap<String, Object> selectClubAll(PageDto pageDto);

}
