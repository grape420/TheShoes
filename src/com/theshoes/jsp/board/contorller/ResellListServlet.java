package com.theshoes.jsp.board.contorller;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.theshoes.jsp.board.model.dto.ResellListDTO;
import com.theshoes.jsp.board.model.service.ResellListService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/board/resell")
public class ResellListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
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
		
		/* 게시판 정보 조회 */
//		List<ResellListDTO> resellList = new ResellListService().selectResellList();
//		
//		String path = "";
//		if (!resellList.isEmpty()) {
//			path = "/WEB-INF/views/resell/resellList.jsp";
//			request.setAttribute("resellList", resellList);
//		} else {
//			path = "/WEB-INF/views/common/errorPage.jsp";
////			request.setAttribute(d, response);   			// 
//		}
		
	}

}
