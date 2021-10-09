package com.theshoes.jsp.board.contorller;

import java.io.IOException;
import java.sql.Date;
import java.util.Calendar;
import java.util.GregorianCalendar;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.theshoes.jsp.board.model.dto.BoardDTO;

@WebServlet("/board/reg")
public class RegBoardServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/* '등록하기' 버튼 클릭 시 get 요청 -> 게시글 작성하는 페이지로 이동 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String path = "/WEB-INF/views/board/regBoard.jsp";
		
		request.getRequestDispatcher(path).forward(request, response);
	}

	/* 공지사항 작성 후 post 요청을 할 경우 처리하는 역할 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		/* 사용자가 입력한 정보 받아오기 */
		String noticeTitle = request.getParameter("noticeTitle");	  		// 공지사항 제목
		String noticeWriterId = request.getParameter("noticeWriterId");		// 공지사항 작성자 id
		String noticeContent = request.getParameter("noticeContent");		// 공지사항 세부내용
		
		/* 오늘 날짜 객체 생성 */
		Calendar cal = new GregorianCalendar();
		
		/* java.sql.Date 형으로 변환 */
		Date noticeRegDate = new Date(cal.getTimeInMillis());
		
		/* BoardDTO에 값 넣기 */
		BoardDTO noticeBoard = new BoardDTO();			
//		noticeBoard.setBoardNo(0);							// 시퀀스 사용					
		noticeBoard.setBoardId(noticeWriterId);	
		noticeBoard.setBoardCategoryNo(1);					// '공지사항' 게시글 카테고리 : 1
		noticeBoard.setBoardTitle(noticeTitle);
		noticeBoard.setBoardContent(noticeContent);
		noticeBoard.setBoardRegDate(noticeRegDate);		
		noticeBoard.setBoardHit(0);
		noticeBoard.setCategoryOrder(0);
	}
}
