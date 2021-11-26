package com.test.service;

import java.util.List;

import com.test.dto.boardDTO;

public interface boardService {
	int insertReview(boardDTO dto);
	
	List<boardDTO> list();
}
