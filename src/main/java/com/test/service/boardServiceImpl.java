package com.test.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.test.dao.boardDAO;
import com.test.dto.boardDTO;

@Service
public class boardServiceImpl implements boardService{
	@Autowired
	boardDAO dao;
	
	@Override
	public int insertReview(boardDTO dto) {
		int result = dao.insertReview(dto);
		return result;
	}

	@Override
	public List<boardDTO> list() {
		List<boardDTO> list = dao.list();
		return list;
	}

}
