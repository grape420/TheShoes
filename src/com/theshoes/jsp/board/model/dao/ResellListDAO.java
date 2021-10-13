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

	public static int insertResellShoes(SqlSession session, ResellDetailDTO resellShoes) {
		return session.insert("resellListDAO.insertResellShoes", resellShoes);
	}

	public static int insertResellThumb(SqlSession session, ResellThumbDTO file) {
		return session.insert("resellListDAO.insertResellThumb", file);
	}
	
	public static int incrementBoardCount(SqlSession session, int no) {
		return session.update("ResellListDAO.incrementBoardCount", no);	
	}
	public ResellListDTO selectOneResellList(SqlSession session, int no) {
		return session.selectOne("resellListDAO.selectOneResellList", no);
	}

}
