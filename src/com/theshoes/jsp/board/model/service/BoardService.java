package com.theshoes.jsp.board.model.service;

import static com.theshoes.jsp.common.mybatis.Template.getSqlSession;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.theshoes.jsp.board.model.dao.BoardDAO;
import com.theshoes.jsp.board.model.dto.BoardDTO;
import com.theshoes.jsp.common.paging.SelectCriteria;

public class BoardService {
	
	private final BoardDAO boardDAO;
	
	public BoardService() {
		boardDAO = new BoardDAO();
	}
	
	/* 페이징 처리를 위한 공지사항 게시물 수 조회용 메소드 */
	public int selectNoticeTotalCount() {
		
		SqlSession session = getSqlSession();
		
		int totalCount = boardDAO.selectNoticeTotalCount(session);
		
		session.close();
		
		return totalCount;
	}
	
	/* 공지사항 게시물 전체 조회용 메소드 */
	public List<BoardDTO> selectAllNoticeList(SelectCriteria selectCriteria) {
		
		SqlSession session = getSqlSession();
		
		List<BoardDTO> noticeList = boardDAO.selectAllNoticeList(session, selectCriteria);
		System.out.println("noticeList : " + noticeList);
		session.close();
		
		return noticeList;
	}
	
	/* 공지사항 게시판에 새로운 글 추가 */
	public int registNotice(BoardDTO notice) {
		
		SqlSession session = getSqlSession();
		
		int result = boardDAO.registNotice(session, notice);
		
		if(result > 0) {
			session.commit();
		} else {
			session.rollback();
		}
		
		session.close();
		
		return result;
	}
	
	/* 게시글 상세보기 */
	public BoardDTO selectNoticeDetail(int categoryOrder) {
		
		SqlSession session = getSqlSession();
		BoardDTO noticeDetail = null;
		
		/* 게시글 조회수 */
		int result = boardDAO.incrementNoticeCount(session, categoryOrder);
				
		if(result > 0) {
			noticeDetail = boardDAO.selectNoticeDetail(session, categoryOrder);
			
			System.out.println(noticeDetail);
			
			if(noticeDetail != null) {
				session.commit();
			} else {
				session.rollback();
			}
		} else {
			session.rollback();
		}
		
		session.close();
		
		return noticeDetail;
	}

	/* 공지사항 수정하기 */
	public int updateNoticeDetail(BoardDTO notice) {
		SqlSession session = getSqlSession();
		
		int result = boardDAO.updateNoticeDetail(session, notice);
		
		if(result > 0) {
			session.commit();
		} else {
			session.rollback();
		}
		
		session.close();
		
		return result;
	}


	
}
