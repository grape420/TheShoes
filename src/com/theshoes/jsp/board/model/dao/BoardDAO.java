package com.theshoes.jsp.board.model.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.theshoes.jsp.board.model.dto.BoardDTO;

public class BoardDAO {

	/* 게시판 목록 전체 조회 */
	public List<BoardDTO> selectAllNoticeList(SqlSession session) {
		
		return session.selectList("BoardDAO.selectAllNoticeList");
	}

	/* 게시글 삽입 */
	public int registNotice(SqlSession session, BoardDTO noticeBoard) {
		return session.insert("BoardDAO.registNotice", noticeBoard);
	}

	/* 게시글 조회수 증가 */
	public int incrementPostCount(SqlSession session, int no) {
		return 0;
	}

	/* 게시글 상세보기 조회 */
	public BoardDTO selectPostDetail(SqlSession session, int no) {
		return null;
	}

}
