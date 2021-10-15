package com.theshoes.jsp.manager.model.service;

import static com.theshoes.jsp.common.mybatis.Template.getSqlSession;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.theshoes.jsp.board.model.dto.BoardDTO;
import com.theshoes.jsp.common.paging.SelectCriteria;
import com.theshoes.jsp.manager.model.dao.ManagerDAO;

public class ManagerBoardService {
	
private final ManagerDAO mapper;
	
	public ManagerBoardService() {
		mapper = new ManagerDAO();
	}

	public int selectBoardTotalCount() {
		SqlSession session = getSqlSession();
		
		int totalCount = mapper.selectBoardTotalCount(session);
		
		session.close();
		
		return totalCount;
	}

	public List<BoardDTO> selectAllBoardList(SelectCriteria selectCriteria) {
		SqlSession session = getSqlSession();
		
		List<BoardDTO> boardList = mapper.selectAllBoardList(session, selectCriteria);
		System.out.println("boardList : " + boardList);
		
		session.close();
		
		return boardList;
	}

}
