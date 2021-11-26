package com.test.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.test.dto.boardDTO;

@Component
public class boardDAOImpl implements boardDAO{
	@Autowired
	SqlSession sqlSession;

	@Override
	public int insertReview(boardDTO dto) {
		return sqlSession.insert("com.test.mapper.boardMapper.insertboard",dto);
	}

	@Override 
	public List<boardDTO> list() { 
		return sqlSession.selectList("com.test.mapper.boardMapper.showboard"); 
	}
	 

}
