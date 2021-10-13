package com.theshoes.jsp.member.controller;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.theshoes.jsp.member.model.dto.MemberDTO;
import com.theshoes.jsp.member.model.serivce.MemberService;

@WebServlet("/member/signup")
public class SignupServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("/WEB-INF/views/member/signup.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String pwd = request.getParameter("password");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String birth = request.getParameter("birth");
		
		System.out.println(pwd);
		
		MemberDTO member = new MemberDTO(id, name, pwd, email, phone, null, null, "N", "N", birth, "MEMBER");
		
		MemberService memberService = new MemberService();
		
		int result = memberService.registMember(member);
		
		if (result > 0) {
			request.getRequestDispatcher("/WEB-INF/views/member/login.jsp").forward(request, response);
		} else {
			request.getRequestDispatcher("/WEB-INF/views/common/errorPage.jsp").forward(request, response);
		}
	}

}






























