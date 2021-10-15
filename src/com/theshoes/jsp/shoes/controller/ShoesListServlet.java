package com.theshoes.jsp.shoes.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.theshoes.jsp.common.paging.Pagenation;
import com.theshoes.jsp.common.paging.SelectCriteria;
import com.theshoes.jsp.shoes.model.dto.ShoesDTO;
import com.theshoes.jsp.shoes.model.service.ShoesService;

@WebServlet("/shoes/list")
public class ShoesListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		ShoesService  shoesService = new ShoesService();
		
		/* 페이징처리 */
		int pageNo = 1;						// 기본 시작 페이지번호
		int onePost = ９;					// 한 페이지에 노출시킬 게시글의 수
		int onePage = 5;					// 한번에 보여줄 페이지 버튼의 갯수
		
		String currentPage = request.getParameter("currentPage");
		
		if(currentPage != null && !"".equals(currentPage)) {
			pageNo = Integer.parseInt(currentPage);
		}
		
		int totalNoticeCount = shoesService.selectShoesListCnt();
		
		SelectCriteria selectCriteria = null;
		
		/* 페이징 처리를 위한 로직 호출 후 페이징 처리에 관한 정보를 담고 있는 인스턴스를 반환받는다. */
		selectCriteria = Pagenation.getSelectCriteria(pageNo, totalNoticeCount, onePost, onePage);
		
		List<ShoesDTO> list = shoesService.selectShoesList(selectCriteria);
		
		String path = "";
		
		if(list != null) {
			// GET으로 호출시 shoesList 페이지 호출
			path = "/WEB-INF/views/shoes/shoesList.jsp";
			
			request.setAttribute("list", list);
			request.setAttribute("selectCriteria", selectCriteria);
			
			System.out.println(selectCriteria.toString());
			
		} else {
			path = "/WEB-INF/views/common/errorPage.jsp";
		}
		
		request.getRequestDispatcher(path).forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
