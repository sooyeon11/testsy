package com.test.dao;

import java.util.List;

import com.test.dto.boardDTO;

public interface boardDAO {
	int insertReview(boardDTO dto);
	
	List<boardDTO> list();
}
