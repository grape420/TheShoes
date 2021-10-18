package com.theshoes.jsp.board.contorller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.theshoes.jsp.board.model.service.ResellListService;

@WebServlet("/resell/comments/delete")
public class CommentsDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int boardNo = Integer.parseInt(request.getParameter("shoesNo"));
		int commentNo = Integer.valueOf(request.getParameter("deleteComment"));
		
		ResellListService resellListService = new ResellListService();
		
		int result = resellListService.deleteComment(commentNo);
		
		if(result > 0) {
			request.setAttribute("successCode", "deleteComments");
			request.setAttribute("no", boardNo + "");
			request.getRequestDispatcher("/WEB-INF/views/common/success.jsp").forward(request, response);
		} else {
			request.getRequestDispatcher("/WEB-INF/views/common/errorPage.jsp").forward(request, response);
		}
	}

}
