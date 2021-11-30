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

	@Override
	public boardDTO detailboard(int idx) {
		return sqlSession.selectOne("com.test.mapper.boardMapper.detailboard",idx);
	}

	@Override
	public int update(boardDTO dto) {
		return sqlSession.update("com.test.mapper.boardMapper.update", dto);
	}

	@Override
	public int delete(int idx) {
		return sqlSession.delete("com.test.mapper.boardMapper.delete", idx);
	}
	 
}
