package com.theshoes.jsp.member.model.serivce;

import static com.theshoes.jsp.common.mybatis.Template.getSqlSession;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.theshoes.jsp.board.model.dto.BoardDTO;
import com.theshoes.jsp.member.model.dao.MypageDAO;

public class MypageService {

	
	/* 게시글 조회 리스트 */
	public List<BoardDTO> salesHistorylList() {
		
		SqlSession session = getSqlSession();
		
		List<BoardDTO> salesList = MypageDAO.selectResellList(session);
		System.out.println("resellList" + salesList);
	
		session.close();
		
		return salesList;
	}

}
