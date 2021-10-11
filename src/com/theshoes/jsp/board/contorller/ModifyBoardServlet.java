package com.theshoes.jsp.board.contorller;

import java.io.IOException;
import java.sql.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.theshoes.jsp.board.model.dto.BoardDTO;
import com.theshoes.jsp.board.model.service.BoardService;

@WebServlet("/board/modify")
public class ModifyBoardServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/* 기존 값 불러와서 수정 화면에 띄우기 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int categoryOrder = Integer.parseInt(request.getParameter("categoryOrder")); 
		
		BoardService boardService = new BoardService();
		BoardDTO notice= boardService.selectNoticeDetail(categoryOrder);
		
		String path = "";
		
		if(notice != null) {
			path = "/WEB-INF/views/board/modifyBoard.jsp";
			request.setAttribute("notice", notice);
		} else {
			path = "/WEB-INF/views/common/errorPage.jsp";
		}
		
		request.getRequestDispatcher(path).forward(request, response);
	}

	/* 수정된 정보 저장하기 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println("doPost");
		int categoryOrder = Integer.parseInt(request.getParameter("categoryOrder")); 
		System.out.println("int categoryOrder : " + categoryOrder);
		
		/* 사용자가 입력한 정보 받아오기 */
		String noticeTitle = request.getParameter("noticeTitle");	  		// 공지사항 제목
		String noticeWriterId = request.getParameter("noticeWriterId");		// 공지사항 작성자 id
		String noticeContent = request.getParameter("noticeContent");		// 공지사항 세부내용
		String noticeRegDateString = request.getParameter("noticeRegDate"); 
		
		System.out.println("noticeTitle : " + noticeTitle);
		System.out.println("noticeWriterId : " + noticeWriterId);
		System.out.println("noticeContent : " + noticeContent);
		System.out.println("noticeRegDateString : " + noticeRegDateString);
		
		/* String -> Date 형변환 */
		Date noticeRegDate = Date.valueOf(noticeRegDateString);
		
		/* DTO에 값 넣고 전달하기 */
		BoardDTO notice = new BoardDTO();			
		notice.setBoardId(noticeWriterId);	
		notice.setBoardTitle(noticeTitle);				
		notice.setBoardContent(noticeContent);			
		notice.setCategoryOrder(categoryOrder);
		notice.setBoardRegDate(noticeRegDate);
		
		System.out.println(notice);
		
		BoardService boardService = new BoardService();
		int result= boardService.updateNoticeDetail(notice);

		String path = "";
		
		if(result > 0) {
			/* 수정 필요 */
			path = "/WEB-INF/views/board/boardList.jsp";
		} else {
			path = "/WEB-INF/views/common/errorPage.jsp";
		}
		
		request.getRequestDispatcher(path).forward(request, response);
	}

}
