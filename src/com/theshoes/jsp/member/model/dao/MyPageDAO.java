package com.theshoes.jsp.member.model.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.theshoes.jsp.board.model.dto.ResellListDTO;
import com.theshoes.jsp.common.paging.SelectCriteria;

public class MyPageDAO {

	/* 판매내역 */ 
	public List<ResellListDTO> selectSaleslList(SqlSession session, SelectCriteria selectCriteria) {
		return session.selectList("MyPageDAO.selectSaleslList", selectCriteria);
	}

	public int selectSalesHistoryTotalCount(SqlSession session) {
		return session.selectOne("MyPageDAO.selectSalesHistoryTotalCount");
	}

}
