package com.theshoes.jsp.member.model.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.theshoes.jsp.board.model.dto.BoardDTO;
import com.theshoes.jsp.common.paging.SelectCriteriaContainId;
import com.theshoes.jsp.manager.model.dto.EventDTO;

public class MyPageDAO {

	/* 판매내역 */ 
	public List<BoardDTO> selectResellList(SqlSession session) {
		// TODO Auto-generated method stub
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
