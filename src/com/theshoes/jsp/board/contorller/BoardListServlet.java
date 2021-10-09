package com.theshoes.jsp.board.contorller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.theshoes.jsp.board.model.dto.BoardDTO;
import com.theshoes.jsp.board.model.service.BoardService;

@WebServlet("/board/list")
public class BoardListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		List<BoardDTO> noticeList = new BoardService().selectAllNoticeList();

		System.out.println(noticeList);
		
		String path = "";
		if (noticeList != null) {
			path = "/WEB-INF/views/board/boardList.jsp";
			request.setAttribute("noticeList", noticeList);
		} else {
			// web.xml에서 tag처리 하면 여기다가 경로 설정 안해도 되나??
		}

		request.getRequestDispatcher(path).forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

}
