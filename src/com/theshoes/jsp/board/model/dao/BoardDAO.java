package com.theshoes.jsp.board.model.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.theshoes.jsp.board.model.dto.BoardDTO;
import com.theshoes.jsp.common.paging.SelectCriteria;

public class BoardDAO {

	/* 공지사항 목록 전체 조회 */
	public List<BoardDTO> selectAllNoticeList(SqlSession session) {
		System.out.println("BoardDAO");
		return session.selectList("BoardDAO.selectAllNoticeList");
	}

	/* 공지사항 전체 게시글 수 조회 */
	public int selectNoticeTotalCount(SqlSession session) {
		return session.selectOne("BoardDAO.selectNoticeTotalCount");
	}

	/* 새로운 공지사항 삽입 */
	public int registNotice(SqlSession session, BoardDTO noticeBoard) {
		return session.insert("BoardDAO.registNotice", noticeBoard);
	}

	/* 게시글 상세보기 조회 */
	public BoardDTO selectPostDetail(SqlSession session, int no) {
		return null;
	}

	/* 게시글 조회수 증가 */
	public int incrementPostCount(SqlSession session, int no) {
		return 0;
	}
}
