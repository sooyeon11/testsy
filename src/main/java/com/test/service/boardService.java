package com.test.service;

import java.util.List;
import java.util.Map;

import com.test.dto.Pagination;
import com.test.dto.boardDTO;

public interface boardService {
	List<boardDTO> list();
	
	boardDTO detailboard(int mb_id);
	
	int write(boardDTO dto);
	
	int update(boardDTO dto);
	
	int delete(int mb_id);

	// 게시물 총 갯수
	public int count() throws Exception;
	
	// 게시물 목록 + 페이징
	public List<boardDTO> listPage(int displayPost, int postNum) throws Exception;
}
