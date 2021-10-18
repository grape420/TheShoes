package com.theshoes.jsp.board.model.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.theshoes.jsp.board.model.dto.BoardDTO;
import com.theshoes.jsp.board.model.dto.CommentsDTO;
import com.theshoes.jsp.board.model.dto.ResellDTO;
import com.theshoes.jsp.board.model.dto.ResellDetailDTO;
import com.theshoes.jsp.board.model.dto.ResellListDTO;
import com.theshoes.jsp.board.model.dto.ResellThumbDTO;
import com.theshoes.jsp.common.paging.SelectCriteria;

public class ResellListDAO {

	public List<ResellDetailDTO> selectResellList(SqlSession session, SelectCriteria selectCriteria) {
		
		return session.selectList("ResellListDAO.selectResellList", selectCriteria);
	}
	public ResellDetailDTO selectOneResellList(SqlSession session, int no) {
			return session.selectOne("ResellListDAO.selectOneResellList", no);
	}
	public int insertResellShoes(SqlSession session, ResellListDTO resell) {
		return session.insert("ResellListDAO.insertResellShoes", resell);
	}

	public int insertResellThumb(SqlSession session, ResellThumbDTO resellThumb) {
		return session.insert("ResellListDAO.insertResellThumb", resellThumb);
	}
	public int selectResellTotalCount(SqlSession session) {
		return session.selectOne("ResellListDAO.selectResellTotalCount");
	}
	public int comments(SqlSession session, CommentsDTO commentsDTO) {
		return session.insert("ResellListDAO.comments", commentsDTO);
	}
	public int deleteComment(SqlSession session, int no) {
		return session.delete("ResellListDAO.deleteComment", no);
	}
	
}