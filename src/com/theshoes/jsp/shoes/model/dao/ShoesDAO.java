package com.theshoes.jsp.shoes.model.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.theshoes.jsp.common.paging.SelectCriteria;
import com.theshoes.jsp.manager.model.dto.EventDTO;
import com.theshoes.jsp.manager.model.dto.WinnerDTO;
import com.theshoes.jsp.shoes.model.dto.ShoesDTO;

public class ShoesDAO {

	public List<ShoesDTO> selectShoesList(SqlSession session, String search) {
		return session.selectList("ShoesDAO.selectShoesList", search);
	}

	public int selectShoesListCnt(SqlSession session) {
		return session.selectOne("ShoesDAO.selectShoesListCnt");
	}

	public ShoesDTO selectShoesDetail(SqlSession session, int no) {
		return session.selectOne("ShoesDAO.selectShoesDetail", no);
	}
	
	public int entryEvent(SqlSession session, EventDTO shoesEvent) {
		return session.insert("ShoesDAO.entryEvent", shoesEvent);
	}

	public String selectEventByRandomNo(SqlSession session, int randomNo) {
		return session.selectOne("ShoesDAO.selectEventByRandomNo", randomNo);
	}
	
	public int isEntryUser(SqlSession session, Map<String, String> map) {
		return session.selectOne("ShoesDAO.isEntryUser", map);
	}

	public int selectEvnetNo(SqlSession session, EventDTO event) {
		return session.selectOne("ShoesDAO.selectEvnetNo", event);
	}

	public int updateEvent(SqlSession session, EventDTO event) {
		return session.update("ShoesDAO.updateEvent", event);
	}

	public int updateWinner(SqlSession session, EventDTO event) {
		System.out.println(event);
		return session.update("ShoesDAO.updateWinner", event);
	}
}
