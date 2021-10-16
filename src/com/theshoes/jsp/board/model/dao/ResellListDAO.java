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
	public ResellDetailDTO selectOneResellList(SqlSession session, int no) {
			return session.selectOne("ResellListDAO.selectOneResellList", no);
	}
	public int insertResellShoes(SqlSession session, ResellListDTO resell) {
		return session.insert("ResellListDAO.insertResellShoes", resell);
	}

	public int insertResellThumb(SqlSession session, ResellThumbDTO resellThumb) {
		System.out.println(resellThumb);
		return session.insert("ResellListDAO.insertResellThumb", resellThumb);
	}
	
}