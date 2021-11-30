package com.test.service;

import java.util.List;
import java.util.Map;

import com.test.dto.boardDTO;

public interface boardService {
	int insertReview(boardDTO dto);
	
	List<boardDTO> list();
	
	boardDTO detailboard(int idx);
	
	int update(boardDTO dto);
	
	int delete(int idx);
}
