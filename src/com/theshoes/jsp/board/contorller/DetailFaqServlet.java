package com.theshoes.jsp.board.contorller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.theshoes.jsp.board.model.dto.BoardDTO;
import com.theshoes.jsp.board.model.service.BoardService;

@WebServlet("/faq/detail")
public class DetailFaqServlet extends HttpServlet {

	private static final long serialVersionUID = 5446606791560063085L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println(request.getParameter("categoryOrder"));
		
		int categoryOrder = Integer.parseInt(request.getParameter("categoryOrder"));
		
		System.out.println("detailSer - categoryOrder : " + categoryOrder);
		
		BoardService boardService = new BoardService();
		BoardDTO faqDetail = boardService.selectFaqDetail(categoryOrder);
		
		System.out.println("faqDetail : " + faqDetail);
		
		String path = "";
		if(faqDetail != null) {
			path = "/WEB-INF/views/faq/faqDetail.jsp";
			request.setAttribute("faq", faqDetail);
		} else {
			path = "/WEB-INF/views/common/errorPage.jsp";
		}
		
		request.getRequestDispatcher(path).forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}