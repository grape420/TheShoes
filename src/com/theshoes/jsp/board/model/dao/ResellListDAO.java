package com.theshoes.jsp.board.model.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.theshoes.jsp.board.model.dto.ResellDetailDTO;
import com.theshoes.jsp.board.model.dto.ResellListDTO;
import com.theshoes.jsp.board.model.dto.ResellThumbDTO;
import com.theshoes.jsp.common.paging.SelectCriteria;

public class ResellListDAO {

	public int selectTotalCount(SqlSession session, Map<String, String> searchMap) {
		
		return session.selectOne("ResellListDAO.selectTotalCount", searchMap);
	}

//	public List<ResellListDTO> selectResellList(SqlSession session, SelectCriteria selectCriteria) {
//
//		return session.selectList("ResellListDAO.selectResellList", selectCriteria);
//	}

	public List<ResellListDTO> selectResellList(SqlSession session) {
		
		return session.selectList("ResellListDAO.selectResellList");
	}

	public static int incrementBoardCount(SqlSession session, int no) {
		return session.update("ResellListDAO.incrementBoardCount", no);	
	}

	public ResellListDTO selectOneResell(SqlSession session, int no) {
		return session.selectOne("resellListDAO.selectOneResell", no);
	}

	public static int insertShoes(SqlSession session, ResellDetailDTO resellShoes) {
		return session.insert("resellListDAO.insertShoes", resellShoes);
	}

	public static int insertShoesThumb(SqlSession session, ResellThumbDTO resellThumbDTO) {
		return session.insert("resellListDAO.insertShoesThumb", resellThumbDTO);
	}

}