package com.theshoes.jsp.member.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.theshoes.jsp.member.model.dto.MemberDTO;
import com.theshoes.jsp.member.model.serivce.MemberService;

@WebServlet("/member/login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("/WEB-INF/views/member/login.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		String pwd = request.getParameter("password");
		
		MemberDTO member = new MemberDTO();
		member.setId(id);
		member.setPwd(pwd);
		
		MemberService memberService = new MemberService();
		
		member = memberService.loginMember(member);
		
		if(member != null) {
			HttpSession session = request.getSession();
			session.setAttribute("entryMember", member);

			request.getRequestDispatcher("/WEB-INF/views/main/mainPage.jsp").forward(request, response);
		} else {
			request.getRequestDispatcher("/WEB-INF/views/main/mainPage.jsp").forward(request, response);
		}
	}

}
