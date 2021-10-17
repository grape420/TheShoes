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

@WebServlet("/board/delete")
public class DeleteBoardServlet extends HttpServlet {

	private static final long serialVersionUID = -1565265288794177758L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int categoryOrder = Integer.parseInt(request.getParameter("categoryOrder"));
				
		BoardService boardService = new BoardService();
		int result = boardService.deleteNotice(categoryOrder);
		
		System.out.println("공지사항 삭제 servlet : ");
		
		String path = "";
		if(result > 0 ) {
			path = "/WEB-INF/views/common/success.jsp";
			request.setAttribute("successCode", "deleteNotice");
		} else {
			path = "/WEB-INF/views/common/errorPage.jsp";
		}
		
		request.getRequestDispatcher(path).forward(request, response);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
