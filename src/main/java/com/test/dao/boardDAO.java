package com.test.dao;

import java.util.List;
import java.util.Map;

import com.test.dto.boardDTO;

public interface boardDAO {
	int insertReview(boardDTO dto);
	
	List<boardDTO> list();
	
	boardDTO detailboard(int idx);
	
	int update(boardDTO dto);
	
	int delete(int idx);
}
