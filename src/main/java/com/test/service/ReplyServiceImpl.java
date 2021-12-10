
package com.test.service;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.test.dao.ReplyDAO;
import com.test.dto.ReplyDTO;

@Service
public class ReplyServiceImpl implements ReplyService {

	@Autowired
	ReplyDAO dao;

	@Override
	public List<ReplyDTO> list(int mb_id) {
		// 댓글 조회
		List<ReplyDTO> list = dao.list(mb_id);
		return list;

	}

	@Override
	public int write(ReplyDTO dto) {
		// 댓글 작성
		
		return dao.write(dto);
	}

	@Override
	public int update(ReplyDTO dto) {
		// 댓글 수정
		return dao.update(dto);
	}

	@Override
	public int delete(int mbre_id) {
		// 댓글 삭제
		return dao.delete(mbre_id);
	}

}
