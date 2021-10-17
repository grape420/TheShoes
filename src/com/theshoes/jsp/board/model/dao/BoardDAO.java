package com.theshoes.jsp.board.model.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.theshoes.jsp.board.model.dto.BoardDTO;
import com.theshoes.jsp.common.paging.SelectCriteria;

public class BoardDAO {

	/* 공지사항 */
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

	/* 공지사항 삭제 */
	public int deleteNotice(SqlSession session, int categoryOrder) {
		return session.delete("BoardDAO.deleteNotice", categoryOrder);
	}
	
	/* FAQ */
	/* FAQ 조회수 증가 */
	public int incrementFaqCount(SqlSession session, int categoryOrder) {
		return session.update("BoardDAO.incrementFaqCount", categoryOrder);
	}
	
	/* FAQ 목록 전체 조회 */
	public List<BoardDTO> selectAllFaqList(SqlSession session, SelectCriteria selectCriteria) {
		System.out.println(selectCriteria);
		return session.selectList("BoardDAO.selectAllFaqList", selectCriteria);
	}
	
	/* FAQ 전체 게시글 수 조회 */
	public int selectFaqTotalCount(SqlSession session) {
		return session.selectOne("BoardDAO.selectFaqTotalCount");
	}

	/* 새로운 FAQ 삽입 */
	public int registFaq(SqlSession session, BoardDTO faq) {
		return session.insert("BoardDAO.registFaq", faq);
	}

	/* FAQ 상세보기 조회 */
	public BoardDTO selectFaqDetail(SqlSession session, int categoryOrder) {
		System.out.println("BoardDAO : categoryOrder" + categoryOrder);
		return session.selectOne("BoardDAO.selectFaqDetail", categoryOrder);
	}

	/* FAQ 수정 */
	public int updateFaqDetail(SqlSession session, BoardDTO faq) {
		return session.update("BoardDAO.updateFaqDetail", faq);
	}
	
	/* FAQ 삭제 */
	public int deleteFaq(SqlSession session, int categoryOrder) {
		System.out.println("faq 삭제 DAO : " + categoryOrder);
		return session.delete("BoardDAO.deleteFaq", categoryOrder);
	}

}
