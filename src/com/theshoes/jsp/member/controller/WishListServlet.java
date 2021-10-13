package com.theshoes.jsp.member.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.theshoes.jsp.member.model.dto.MemberDTO;
import com.theshoes.jsp.member.model.dto.WishListDTO;
import com.theshoes.jsp.member.model.serivce.MemberService;

@WebServlet("/myPage/wishList")
public class WishListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		MemberService memberService = new MemberService();
		
		HttpSession session = request.getSession();
		List<MemberDTO> wishList = memberService.selectAllWishList(((MemberDTO)session.getAttribute("entryMember")).getId());
		
		System.out.println(wishList);
		
		for(MemberDTO wish : wishList) {
			System.out.println(wish);
		}
		
		request.getRequestDispatcher("/WEB-INF/views/myPage/wishList.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
