package com.theshoes.jsp.member.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.theshoes.jsp.board.model.dto.BoardDTO;
import com.theshoes.jsp.common.paging.Pagenation;
import com.theshoes.jsp.common.paging.SelectCriteria;
import com.theshoes.jsp.member.model.serivce.MypageService;

@WebServlet("/myPage/salesHistory")
public class SalesHistoryServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		/* 페이지 하나에 보여줄 게시물 수 */
		int limit = 12;
		
		/* 페이징 버튼 갯수 */
		int buttonAmount = 5;
		
		/* 기본 시작 페이지 번호 */
		int pageNo = 1;
		
		/* 페이지 목록 보기 */
		String currentPage = request.getParameter("currentPage");
		
		if (currentPage != null && !"".equals(currentPage)) {
			pageNo = Integer.parseInt(currentPage);
		}
	
		/* 전체 게시물 수 */
		MypageService salesHistoryService = new MypageService();

		List<BoardDTO> salesList = salesHistoryService.salesHistorylList();
		
		SelectCriteria selectCriteria = null;
		
		selectCriteria = Pagenation.getSelectCriteria(pageNo, salesList.size(), limit, buttonAmount);
		
		/* 게시판 정보 조회 */
		System.out.println(selectCriteria);
		
		String path = "";
		if (salesList != null) {
			path = "/WEB-INF/views/myPage/salesHistory.jsp";
			request.setAttribute("pagingPath", "board");
			request.setAttribute("board", salesList);
			request.setAttribute("selectCriteria", selectCriteria);			
		} else {
			path = "/WEB-INF/views/common/errorPage.jsp";
		}
		
		request.getRequestDispatcher(path).forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

}
