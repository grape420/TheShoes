package com.theshoes.jsp.cs.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.theshoes.jsp.board.model.dto.BoardDTO;
import com.theshoes.jsp.board.model.service.BoardService;
import com.theshoes.jsp.common.paging.Pagenation;
import com.theshoes.jsp.common.paging.SelectCriteria;
import com.theshoes.jsp.cs.model.dto.QuestionDTO;
import com.theshoes.jsp.cs.model.service.QuestionService;

@WebServlet("/cs/list")
public class QuestionListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/* 페이징처리 */
		int pageNo = 1;						// 기본 시작 페이지번호
		int onePost = 10;					// 한 페이지에 노출시킬 게시글의 수
		int onePage = 5;					// 한번에 보여줄 페이지 버튼의 갯수
		
		String currentPage = request.getParameter("currentPage");		// 현재 페이지 값 
		
		if(currentPage != null && !"".equals(currentPage)) {
			pageNo = Integer.parseInt(currentPage);
		}
		
		QuestionService questionService = new QuestionService();
		BoardService boardService = new BoardService();

		
		/* 전체 게시물 수 조회 */
		int totalCsCount = questionService.selectCsTotalCount();
		System.out.println("csList.size : " + totalCsCount);

		/* 전체 공지사항 목록 조회 */
		SelectCriteria selectCriteria = null;

		/* 페이징 처리를 위한 로직 호출 후 페이징 처리에 관한 정보를 담고 있는 인스턴스를 반환받는다. */
		selectCriteria = Pagenation.getSelectCriteria(pageNo, totalCsCount, onePost, onePage);
		
		System.out.println(selectCriteria);

		List<QuestionDTO> csList = questionService.selectAllCsList(selectCriteria);
		System.out.println(csList);
		
		List<BoardDTO> noticeList = boardService.selectAllNoticeList(selectCriteria);
		System.out.println(noticeList);
		
		String path = "";
		
		if(csList != null) {
			
			path = "/WEB-INF/views/cs/questionList.jsp";
			request.setAttribute("pagingPath", "cs/list");
			request.setAttribute("csList", csList);
			request.setAttribute("noticeList", noticeList);
			request.setAttribute("selectCriteria", selectCriteria);

		} else {
			path = "/WEB-INF/views/common/errorPage.jsp";
		}
		request.getRequestDispatcher(path).forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
