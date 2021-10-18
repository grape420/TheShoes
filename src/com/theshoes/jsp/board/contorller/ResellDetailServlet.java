package com.theshoes.jsp.board.contorller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.theshoes.jsp.board.model.dto.CommentsDTO;
import com.theshoes.jsp.board.model.dto.ResellDetailDTO;
import com.theshoes.jsp.board.model.service.ResellListService;
import com.theshoes.jsp.member.model.dto.MemberDTO;

@WebServlet("/resell/detail")
public class ResellDetailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		ResellListService resellListService = new ResellListService();
		
		int no = Integer.parseInt(request.getParameter("no"));
		
		ResellDetailDTO resellDetail = resellListService.selectOneResellList(no);
		
		request.setAttribute("commentCnt", resellDetail.getComments().size());
		
		String path = "";
		path = "/WEB-INF/views/resell/resellDetail.jsp";
		request.setAttribute("resellDetail", resellDetail);
		
		request.getRequestDispatcher(path).forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int boardNo = Integer.parseInt(request.getParameter("boardNo"));
		String commentsContent = request.getParameter("content");
		
		CommentsDTO commentsDTO = new CommentsDTO();
		commentsDTO.setBoardNo(boardNo);
		commentsDTO.setCommentsContent(commentsContent);
		if(request.getParameter("commentsYn") == null) {
			commentsDTO.setCommentsYn("N");
		} else {
			commentsDTO.setCommentsYn("Y");
		}
		commentsDTO.setCommentsId(((MemberDTO)request.getSession().getAttribute("entryMember")).getId());
		
		ResellListService resellListService = new ResellListService();
		
		int result = resellListService.comments(commentsDTO);
		
		if(result > 0) {
			request.setAttribute("successCode", "insertComments");
			request.setAttribute("no", boardNo + "");
			request.getRequestDispatcher("/WEB-INF/views/common/success.jsp").forward(request, response);
		} else {
			request.getRequestDispatcher("/WEB-INF/views/common/errorPage.jsp").forward(request, response);
		}
	}
	
}


