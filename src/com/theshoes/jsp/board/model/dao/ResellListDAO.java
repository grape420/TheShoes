package com.theshoes.jsp.board.model.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.theshoes.jsp.board.model.dto.BoardDTO;
import com.theshoes.jsp.board.model.dto.ResellDTO;
import com.theshoes.jsp.board.model.dto.ResellDetailDTO;
import com.theshoes.jsp.board.model.dto.ResellListDTO;
import com.theshoes.jsp.board.model.dto.ResellThumbDTO;
import com.theshoes.jsp.common.paging.SelectCriteria;

public class ResellListDAO {

	public List<BoardDTO> selectResellList(SqlSession session) {
		
		return session.selectList("ResellListDAO.selectResellList");
	}
	public ResellListDTO selectOneResellList(SqlSession session, int no) {
			return session.selectOne("resellListDAO.selectOneResellList", no);
	}
	public static int insertResellShoes(SqlSession session, ResellDTO resellShoes) {
		return session.insert("resellListDAO.insertResellShoes", resellShoes);
	}

	public static int insertResellThumb(SqlSession session, ResellThumbDTO resellThumb) {
		return session.insert("resellListDAO.insertResellThumb", resellThumb);
	}
	
	public static int incrementBoardCount(SqlSession session, int categoryOrder) {
		return session.update("ResellListDAO.incrementBoardCount", categoryOrder);	
	}
	
	
}
