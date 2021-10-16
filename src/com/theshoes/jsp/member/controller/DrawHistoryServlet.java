package com.theshoes.jsp.member.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.theshoes.jsp.common.paging.Pagenation;
import com.theshoes.jsp.common.paging.SelectCriteria;
import com.theshoes.jsp.manager.model.dto.EventDTO;
import com.theshoes.jsp.member.model.dto.MemberDTO;
import com.theshoes.jsp.member.model.serivce.MypageService;

@WebServlet("/myPage/drawHistory")
public class DrawHistoryServlet extends HttpServlet {

	private static final long serialVersionUID = -6423272961946119157L;


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {		

		int pageNo = 1;						// 기본 시작 페이지번호
		int onePost = 10;					// 한 페이지에 노출시킬 게시글의 수
		int onePage = 5;					// 한번에 보여줄 페이지 버튼의 갯수
		
		SelectCriteria selectCriteria = null;
		MypageService mypageService = new MypageService();
		HttpSession session = request.getSession();
		
		String currentPage = request.getParameter("currentPage");							// 현재 페이지 값 
		String eventId = ((MemberDTO)session.getAttribute("entryMember")).getId();			// 현재 로그인 된 회원의 id
		
		if(currentPage != null && !"".equals(currentPage)) {
			pageNo = Integer.parseInt(currentPage);
		}
		
		List<EventDTO> drawHistory = mypageService.selectAllDrawHistory(eventId);
		System.out.println("서블릿 : " + drawHistory); 
		
		if (currentPage != null) {
			pageNo = Integer.valueOf(currentPage);
		}
		
		String path = "";
		
		if(drawHistory != null) {
			
			selectCriteria = Pagenation.getSelectCriteria(pageNo, drawHistory.size(), onePost, onePage);
			path = "/WEB-INF/views/myPage/drawHistory.jsp";
			request.setAttribute("pagingPath", "/myPage/drawHistory");
			request.setAttribute("drawHistory", drawHistory);
			request.setAttribute("selectCriteria", selectCriteria);

		} else {
			path = "/WEB-INF/views/common/errorPage.jsp";
		}
		request.getRequestDispatcher(path).forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}
}
