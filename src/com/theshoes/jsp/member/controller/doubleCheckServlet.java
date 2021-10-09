package com.theshoes.jsp.member.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.theshoes.jsp.member.model.dto.MemberDTO;
import com.theshoes.jsp.member.model.serivce.MemberService;

@WebServlet("/member/doubleCheck")
public class doubleCheckServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("application/json; charset=UTF-8");
		
		MemberService memberService = new MemberService();
		
		MemberDTO member = new MemberDTO();
		
		if ("id".equals(request.getParameter("type"))) {
			member = memberService.selectMemberById(request.getParameter("value"));
			
		} else if("email".equals(request.getParameter("type"))) {
			member = memberService.selectMemberByEmail(request.getParameter("value"));
		}
		
		String jsonString = null;
		
		if(member == null) {
			jsonString = new Gson().toJson("success");
		} else {
			jsonString = new Gson().toJson("fail");
		}
		
		PrintWriter out = response.getWriter();
		out.print(jsonString);
		out.flush();
		out.close();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
