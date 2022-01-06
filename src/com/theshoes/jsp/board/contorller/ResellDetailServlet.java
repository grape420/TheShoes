package com.theshoes.jsp.board.contorller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.theshoes.jsp.board.model.dto.ResellDetailDTO;
import com.theshoes.jsp.board.model.service.ResellListService;

@WebServlet("/resell/detail")
public class ResellDetailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		ResellListService resellListService = new ResellListService();
		
		int no = Integer.parseInt(request.getParameter("no"));
		
		ResellDetailDTO resellDetail = resellListService.selectOneResellList(no);
		
		String path = "";
		path = "/WEB-INF/views/resell/resellDetail.jsp?no=" + no;
		request.setAttribute("resellDetail", resellDetail);
		
		request.getRequestDispatcher(path).forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}
	/* 안녕 */ 
}


