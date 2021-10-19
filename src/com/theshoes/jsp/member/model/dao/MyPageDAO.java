package com.theshoes.jsp.member.model.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.theshoes.jsp.board.model.dto.ResellListDTO;
import com.theshoes.jsp.common.paging.SelectCriteria;
import com.theshoes.jsp.manager.model.dto.EventDTO;
import com.theshoes.jsp.board.model.dto.BoardDTO;

public class MyPageDAO {

	/* 판매내역 */ 
	public List<ResellListDTO> selectSaleslList(SqlSession session, SelectCriteria selectCriteria) {
		return session.selectList("MyPageDAO.selectSaleslList", selectCriteria);
	}

	public int selectSalesHistoryTotalCount(SqlSession session) {
		return session.selectOne("MyPageDAO.selectSalesHistoryTotalCount");
	}
	
	/* 판매내역 */ 
	public List<BoardDTO> selectResellList(SqlSession session) {
		return null;
	}

	/* 모든 응모 내역 확인 */
	public List<EventDTO> selectAllDrawHistory(SqlSession session, String eventId) {
		System.out.println("mypageDAO - eventId : " + eventId);
		List<EventDTO> test =  session.selectList("MyPageDAO.selectAllDrawHistory", eventId);
		System.out.println("DAO drawHistory : " + test);
		return test;	
	}
}