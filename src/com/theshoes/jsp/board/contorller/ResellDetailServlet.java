package com.theshoes.jsp.board.contorller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.theshoes.jsp.board.model.dto.ResellListDTO;
import com.theshoes.jsp.board.model.service.ResellListService;

@WebServlet("/resell/detail")
public class ResellDetailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int no = Integer.parseInt(request.getParameter("no"));
		
		ResellListDTO resell = new ResellListService().selectOneResellList(no);
		System.out.println(resell);
		
		String path = "";
		if(resell != null) {
			path = "/WEB-INF/views/resell/resellDetail.jsp";
			request.setAttribute("resell", resell);
		} else {
			path = "/WEB-INF/views/common/errorPage";
		}
		
		request.getRequestDispatcher(path).forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}
	
}


