package com.test.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.test.dao.boardDAO;
import com.test.dto.Pagination;
import com.test.dto.boardDTO;

@Service
public class boardServiceImpl implements boardService{
	@Autowired
	boardDAO dao;
	
	@Override
	public List<boardDTO> list() {
		List<boardDTO> list = dao.list();
		return list;
	}

	@Override
	public boardDTO detailboard(int mb_id) {
		dao.hitboard(mb_id);
		return dao.detailboard(mb_id);
	}
	
	@Override
	public int write(boardDTO dto) {
		return dao.write(dto);
	}

	@Override
	public int update(boardDTO dto) {
		return dao.update(dto);
	}

	@Override
	public int delete(int mb_id) {
		return dao.delete(mb_id);
	}

	// 게시물 총 갯수
	@Override
	public int count() throws Exception {
	 return dao.count();
	}
	
	// 게시물 목록 + 페이징
	@Override
	public List<boardDTO> listPage(int displayPost, int postNum) throws Exception {
	 return dao.listPage(displayPost, postNum);
	}
}
