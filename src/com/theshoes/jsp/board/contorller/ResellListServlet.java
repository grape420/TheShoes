package com.theshoes.jsp.board.contorller;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.theshoes.jsp.board.model.dto.ResellListDTO;
import com.theshoes.jsp.board.model.service.ResellListService;
import com.theshoes.jsp.common.paging.Pagenation;
import com.theshoes.jsp.common.paging.SelectCriteria;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/resell/resellList")
public class ResellListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("/WEB-INF/views/resell/resellList.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");		// UTF-8 포맷 변환
		
		/* 페이지 목록 보기 */
		String currentResellPage = request.getParameter("currentResellPage");
		int pageNo = 1;
		
		if (currentResellPage != null && !"".equals(currentResellPage)) {
			pageNo = Integer.parseInt(currentResellPage);
		}
		
		String searchCondition = request.getParameter("searchCondition");
		String searchValue = request.getParameter("searchValue");
		
		Map<String, String> searchMap = new HashMap<>();
		searchMap.put("searchCondition", searchCondition);
		searchMap.put("searchValue", searchValue);
		
		/* 전체 게시물 수 */
		ResellListService resellListService = new ResellListService();
		int totalCount = resellListService.selectTotalCount(searchMap);
		
		/* 페이지 하나에 보여줄 게시물 수 */
		int limit = 12;
		
		/* 페이징 버튼 갯수 */
		int buttonAmount = 5;
		
		SelectCriteria selectCriteria = null;
		
		if (searchCondition != null && !"".equals(searchCondition)) {
			selectCriteria = Pagenation.getSelectCriteria(pageNo, totalCount, limit, buttonAmount, searchCondition, searchValue);
		} else {
			selectCriteria = Pagenation.getSelectCriteria(pageNo, totalCount, limit, buttonAmount);
		}
		
		/* 게시판 정보 조회 */
		List<ResellListDTO> resellList = resellListService.selectResellList();
		
		String path = "";
		if (resellList != null) {
			path = "/WEB-INF/views/resell/resellList.jsp";
			request.setAttribute("resellList", resellList);
		} else {
			path = "/WEB-INF/views/common/errorPage.jsp";
			request.setAttribute("message", "게시물 조회 실패");   			// 
		}
		
		request.getRequestDispatcher(path).forward(request, response);
		
	}

}
