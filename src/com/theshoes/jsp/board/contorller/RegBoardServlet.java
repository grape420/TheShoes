package com.theshoes.jsp.board.contorller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/board/reg")
public class RegBoardServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/* '등록하기' 버튼 클릭 시 get 요청 ->  */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String noticeTitle = request.getParameter("noticeTitle");
		String noticeWriter = request.getParameter("noticeWriter");
		String noticeDetail = request.getParameter("noticeDetail");
	}

	/* 공지사항 작성 후 post 요청을 할 경우 처리하는 역할 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
