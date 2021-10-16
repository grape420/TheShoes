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
import com.theshoes.jsp.member.model.dto.MemberDTO;
import com.theshoes.jsp.shoes.model.dto.ShoesDTO;
import com.theshoes.jsp.shoes.model.service.ShoesService;

@WebServlet("/shoes/detail")
public class ShoesDetailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ShoesService  shoesService = new ShoesService();
		
		// sort로 사용자 구분
		// 0 : 비로그인, 1 : 로그인했지만 응모 안함, 2 : 응모까지 완료함
		int sort = 0;
		int no = Integer.valueOf(request.getParameter("no"));
		
		ShoesDTO shoesDetail = shoesService.selectShoesDetail(no);
		
		String path = "/WEB-INF/views/shoes/shoesDetail.jsp?no=" + no;
		
		request.setAttribute("shoesDetail", shoesDetail);
		
		// 세션체크
		MemberDTO member = (MemberDTO) request.getSession().getAttribute("entryMember");
		
		// 로그인한 사용자이면
		if(member != null) {
			sort = 1;
			
			String userId = member.getId();
			
			// 응모한사람인지 체크
			int isEntry = shoesService.isEntryUser(userId);
			if(isEntry == 1)
				sort = 2;
		}
		
		request.setAttribute("shoesDetail", shoesDetail);
		request.setAttribute("sort", sort);

		request.getRequestDispatcher(path).forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
