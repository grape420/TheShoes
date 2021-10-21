package com.theshoes.jsp.board.contorller;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.theshoes.jsp.board.model.dto.BoardDTO;
import com.theshoes.jsp.board.model.dto.ResellDetailDTO;
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
		
		/* 페이지 하나에 보여줄 게시물 수 */
		int limit = 12;
		
		/* 페이징 버튼 갯수 */
		int buttonAmount = 5;
		
		/* 기본 시작 페이지 번호 */
		int pageNo = 1;
		
		String currentPage = request.getParameter("currentPage");
		
		if(currentPage != null && !"".equals(currentPage)) {
			pageNo = Integer.parseInt(currentPage);
		}
		
		ResellListService resellListService = new ResellListService();
		
		
		int totalResellCount = resellListService.selectResellTotalCount();
		System.out.println("resellList.size : " + totalResellCount);
		
		SelectCriteria selectCriteria = null;
				
		selectCriteria = Pagenation.getSelectCriteria(pageNo, totalResellCount, 1, buttonAmount);
		
		List<ResellDetailDTO> resellList = resellListService.selectResellList(selectCriteria);
		
		for (ResellDetailDTO board: resellList){
			System.out.println(board);
		}
		
		String path = "";
		if (resellList != null) {
			path = "/WEB-INF/views/resell/resellList.jsp";
			request.setAttribute("pagingPath", "resellList");
			request.setAttribute("board", resellList);
			request.setAttribute("selectCriteria", selectCriteria);			
		} else {
			path = "/WEB-INF/views/common/errorPage.jsp";
		}
		
		request.getRequestDispatcher(path).forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}
		

}
