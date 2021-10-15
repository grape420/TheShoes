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
	
	/*---- 공지사항 ----*/
	
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
	
	/* 게시글 상세보기 + 조회수 1 증가 */
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

	/* 수정용 게시글 정보 불러오기 (조회수 증가 X) */
	public BoardDTO selectModNoticeDetail(int categoryOrder) {
		
		SqlSession session = getSqlSession();
		
		BoardDTO noticeDetail = boardDAO.selectNoticeDetail(session, categoryOrder);
		session.close();
		
		return noticeDetail;
	}

	/*---- FAQ ----*/
	
	/* FAQ 상세보기 + 조회수 증가*/
	public BoardDTO selectFaqDetail(int categoryOrder) {
		SqlSession session = getSqlSession();
		BoardDTO faqDetail = null;
		
		/* 게시글 조회수 */
		int result = boardDAO.incrementFaqCount(session, categoryOrder);
				
		if(result > 0) {
			faqDetail = boardDAO.selectFaqDetail(session, categoryOrder);
			
			System.out.println(faqDetail);
			
			if(faqDetail != null) {
				session.commit();
			} else {
				session.rollback();
			}
		} else {
			session.rollback();
		}
		
		session.close();
		
		return faqDetail;
	}

	/* 페이징 처리를 위한 FAQ 게시물 수 조회용 메소드 */
	public int selectFaqTotalCount() {
		
		SqlSession session = getSqlSession();
		
		int totalCount = boardDAO.selectFaqTotalCount(session);
		
		session.close();
		
		return totalCount;
	}
	
	/* FAQ 목록 불러오기 */
	public List<BoardDTO> selectAllFaqList(SelectCriteria selectCriteria) {
		SqlSession session = getSqlSession();
		
		List<BoardDTO> faqList = boardDAO.selectAllFaqList(session, selectCriteria);
		System.out.println("faqList : " + faqList);
		session.close();
		
		return faqList;
	}

	/* 수정용 게시글 정보 불러오기 (조회수 증가 X) */
	public BoardDTO selectModFaqDetail(int categoryOrder) {
		
		SqlSession session = getSqlSession();
		
		BoardDTO faqDetail = boardDAO.selectFaqDetail(session, categoryOrder);
		session.close();
		
		return faqDetail;
	}
	
	/* FAQ 수정하기 */
	public int updateFaqDetail(BoardDTO faq) {
		SqlSession session = getSqlSession();
		
		int result = boardDAO.updateFaqDetail(session, faq);
		
		if(result > 0) {
			session.commit();
		} else {
			session.rollback();
		}
		
		session.close();
		
		return result;
	}

	/* FAQ 등록하기 */
	public int registFaq(BoardDTO faq) {
		SqlSession session = getSqlSession();
		
		int result = boardDAO.registFaq(session, faq);
		
		if(result > 0) {
			session.commit();
		} else {
			session.rollback();
		}
		
		session.close();
		
		return result;
	}	
}
