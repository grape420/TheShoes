package com.theshoes.jsp.member.model.serivce;

import static com.theshoes.jsp.common.mybatis.Template.getSqlSession;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.theshoes.jsp.board.model.dto.ResellListDTO;
import com.theshoes.jsp.common.paging.SelectCriteria;
import com.theshoes.jsp.member.model.dao.MyPageDAO;
import com.theshoes.jsp.manager.model.dto.EventDTO;

public class MypageService {
	
	private final MyPageDAO myPageDAO;
	
	public MypageService() {
		myPageDAO = new MyPageDAO();
	}

	
	/* 게시글 조회 리스트 */
	public List<ResellListDTO> salesHistorylList(SelectCriteria selectCriteria) {
		
		SqlSession session = getSqlSession();
		
		List<ResellListDTO> salesList = myPageDAO.selectSaleslList(session, selectCriteria);
		
		System.out.println("resellList" + salesList);
	
		session.close();
		
		return salesList;
	}

	public int selectSalesHistoryTotalCount() {
		SqlSession session = getSqlSession();
		
		int totalCount = myPageDAO.selectSalesHistoryTotalCount(session);
		
		session.close();
		
		return totalCount;
	}
	
	/* 모든 응모 내역 조회 */
	public List<EventDTO> selectAllDrawHistory(String eventId) {
		SqlSession session = getSqlSession();
		
		List<EventDTO> drawHistory = myPageDAO.selectAllDrawHistory(session, eventId);
		System.out.println("서비스 drawHistory : " + drawHistory);
		session.close();
		
		return drawHistory;	
	}

}