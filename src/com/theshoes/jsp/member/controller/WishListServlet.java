package com.theshoes.jsp.member.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.theshoes.jsp.common.paging.Pagenation;
import com.theshoes.jsp.common.paging.SelectCriteria;
import com.theshoes.jsp.member.model.dto.MemberDTO;
import com.theshoes.jsp.member.model.serivce.MemberService;

@WebServlet("/myPage/wishList")
public class WishListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		MemberService memberService = new MemberService();
		
		HttpSession session = request.getSession();
		MemberDTO member = memberService.selectAllWishList(((MemberDTO)session.getAttribute("entryMember")).getId());
		
		int nowPage = 1;
		if(request.getParameter("currentPage") != null) {
			nowPage = Integer.valueOf(request.getParameter("currentPage"));
		}
		
		SelectCriteria sc = Pagenation.getSelectCriteria(nowPage, member.getWishList().size(), 5, 5);
		
		request.setAttribute("pagingPath", "myPage/wishList");
		request.setAttribute("wishList", member.getWishList());
		request.setAttribute("selectCriteria", sc);
		request.getRequestDispatcher("/WEB-INF/views/myPage/wishList.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
