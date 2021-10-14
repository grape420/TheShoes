package com.theshoes.jsp.common.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/common/nav")
public class NavigateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int no = Integer.valueOf(request.getParameter("no"));
		switch (no) {
		case 0: request.getRequestDispatcher("/WEB-INF/views/common/individual.jsp").forward(request, response); break;
		case 1: request.getRequestDispatcher("/WEB-INF/views/common/termsOfUse.jsp").forward(request, response); break;
		case 2: request.getRequestDispatcher("/WEB-INF/views/myPage/withDraw.jsp").forward(request, response); break;
		default: request.getRequestDispatcher("/WEB-INF/views/common/errorPage.jsp").forward(request, response); break;
		}
	}

}
