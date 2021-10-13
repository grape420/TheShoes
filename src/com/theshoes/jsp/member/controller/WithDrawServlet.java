package com.theshoes.jsp.member.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;
import com.theshoes.jsp.member.model.dto.MemberDTO;
import com.theshoes.jsp.member.model.serivce.MemberService;

@WebServlet("/myPage/withDraw")
public class WithDrawServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		MemberDTO member =  ((MemberDTO)session.getAttribute("entryMember"));
		
		member.setBlackReason(request.getParameter("reason"));
		
		System.out.println("reason : " + request.getParameter("reason"));
		System.out.println("member : " + member);
				
		MemberService memberService = new MemberService();
		
		int result = memberService.withDraw(member);
		
		if(result > 0) {
			request.getSession().invalidate();
			request.setAttribute("successCode", "mainPage");
			request.getRequestDispatcher("/WEB-INF/views/common/success.jsp").forward(request, response);
		} else {
			request.getRequestDispatcher("/WEB-INF/views/common/errorPage.jsp").forward(request, response);
		}
	}

}
