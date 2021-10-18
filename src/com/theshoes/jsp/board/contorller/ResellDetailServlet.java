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

import com.theshoes.jsp.board.model.dto.CommentsDTO;
import com.theshoes.jsp.board.model.dto.ResellDetailDTO;
import com.theshoes.jsp.board.model.dto.ResellThumbDTO;
import com.theshoes.jsp.board.model.service.ResellListService;

@WebServlet("/resell/detail")
public class ResellDetailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		ResellListService resellListService = new ResellListService();
		
		int no = Integer.parseInt(request.getParameter("no"));
		
		ResellDetailDTO resellDetail = resellListService.selectOneResellList(no);
		
		System.out.println(resellDetail.getComments().size());
		
		for(CommentsDTO thumb: resellDetail.getComments()) {
			System.out.println("dfsdfs" + thumb);
		}
		
		String path = "";
		path = "/WEB-INF/views/resell/resellDetail.jsp";
		request.setAttribute("resellDetail", resellDetail);
		
		request.getRequestDispatcher(path).forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int boardNo = Integer.parseInt(request.getParameter("boardNo"));
		int commentsNo = Integer.parseInt(request.getParameter("commentsNo"));
		String commentsContent = request.getParameter("commentsContent");
		String commentsYn = request.getParameter("commentsYn");
		
		Calendar cal = new GregorianCalendar();
		
		Date commentsRegDate = new Date(cal.getTimeInMillis());
		
		CommentsDTO commentsDTO = new CommentsDTO();
		commentsDTO.setCommentsNo(commentsNo);
		commentsDTO.setBoardNo(boardNo);
		commentsDTO.setCommentsContent(commentsContent);
		commentsDTO.setCommentsYn(commentsYn);
		commentsDTO.setCommentsRegDate(commentsRegDate);
		
		
		ResellListService resellListService = new ResellListService();
		
		int result = resellListService.comments(commentsDTO);
		
		String path = "";
		
		if(result > 0) {
			path = "/WEB-INF/views/resell/resellDetail.jsp";
			request.setAttribute("comments", commentsDTO);
			request.getRequestDispatcher(path).forward(request, response);
		}
	}
	
}


