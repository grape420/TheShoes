package com.theshoes.jsp.board.model.service;

import static com.theshoes.jsp.common.mybatis.Template.getSqlSession;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.theshoes.jsp.board.model.dao.BoardDAO;
import com.theshoes.jsp.board.model.dto.BoardDTO;

public class BoardService {
	
	private final BoardDAO boardDAO;
	
	public BoardService() {
		boardDAO = new BoardDAO();
	}
	
	/* 게시판 전체 목록 조회 */
	public List<BoardDTO> selectAllNoticeList() {
		
		SqlSession session = getSqlSession();
		
		List<BoardDTO> noticeList = boardDAO.selectAllPostList(session);
		
		session.close();
		
		return noticeList;
	}
	
	/* 게시판에 새로운 글 추가 */
	public int insertNotice(BoardDTO newNotice) {
		
		SqlSession session = getSqlSession();
		
		int result = boardDAO.insertPost(session, newNotice);
		
		if(result > 0) {
			session.commit();
		} else {
			session.rollback();
		}
		
		session.close();
		
		return result;
	}
	
	/* 게시글 상세보기 */
	public BoardDTO selectNoticeDetail(int no) {
		
		SqlSession session = getSqlSession();
		BoardDTO postDetail = null;
		
		/* 게시글 조회수 */
		int result = boardDAO.incrementPostCount(session, no);
		
		if(result > 0) {
			postDetail = boardDAO.selectPostDetail(session, no);
			
			if(postDetail != null) {
				session.commit();
			} else {
				session.rollback();
			}
		} else {
			session.rollback();
		}
		
		session.close();
		
		return postDetail;
	}
	
}
