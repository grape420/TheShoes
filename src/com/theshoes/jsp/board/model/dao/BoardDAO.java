package com.theshoes.jsp.board.model.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.theshoes.jsp.board.model.dto.BoardDTO;
import com.theshoes.jsp.common.paging.SelectCriteria;

public class BoardDAO {

	/* 공지사항 목록 전체 조회 */
	public List<BoardDTO> selectAllNoticeList(SqlSession session, SelectCriteria selectCriteria) {
		System.out.println(selectCriteria);
		return session.selectList("BoardDAO.selectAllNoticeList", selectCriteria);
	}
	
	/* 공지사항 전체 게시글 수 조회 */
	public int selectNoticeTotalCount(SqlSession session) {
		return session.selectOne("BoardDAO.selectNoticeTotalCount");
	}

	/* 새로운 공지사항 삽입 */
	public int registNotice(SqlSession session, BoardDTO notice) {
		return session.insert("BoardDAO.registNotice", notice);
	}

	/* 공지사항 조회수 증가 */
	public int incrementNoticeCount(SqlSession session, int categoryOrder) {
		return session.update("BoardDAO.incrementNoticeCount", categoryOrder);
	}

	/* 공지사항 상세보기 조회 */
	public BoardDTO selectNoticeDetail(SqlSession session, int categoryOrder) {
		System.out.println("BoardDAO : categoryOrder" + categoryOrder);
		return session.selectOne("BoardDAO.selectNoticeDetail", categoryOrder);
	}

	/* 공지사항 수정 */
	public int updateNoticeDetail(SqlSession session, BoardDTO notice) {
		return session.update("BoardDAO.updateNoticeDetail", notice);
	}
	
	
}
