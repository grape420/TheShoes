package com.theshoes.jsp.member.model.serivce;

import static com.theshoes.jsp.common.mybatis.Template.getSqlSession;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.theshoes.jsp.board.model.dto.BoardDTO;
import com.theshoes.jsp.manager.model.dto.EventDTO;
import com.theshoes.jsp.member.model.dao.MyPageDAO;

public class MypageService {

	private final MyPageDAO mypageDAO;
	
	public MypageService() {
		mypageDAO = new MyPageDAO();
	}
	
	/* 게시글 조회 리스트 */
	public List<BoardDTO> salesHistorylList() {
		
		SqlSession session = getSqlSession();
		
		List<BoardDTO> salesList = mypageDAO.selectResellList(session);
		System.out.println("resellList" + salesList);
	
		session.close();
		
		return salesList;
	}


	/* 모든 응모 내역 조회 */
	public List<EventDTO> selectAllDrawHistory(String eventId) {
		SqlSession session = getSqlSession();
		
		List<EventDTO> drawHistory = mypageDAO.selectAllDrawHistory(session, eventId);
		System.out.println("서비스 drawHistory : " + drawHistory);
		session.close();
		
		return drawHistory;	
	}
}
