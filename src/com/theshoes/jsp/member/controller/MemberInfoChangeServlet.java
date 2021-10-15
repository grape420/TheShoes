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

@WebServlet("/member/change")
public class MemberInfoChangeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("application/json; charset=UTF-8");
		
		MemberService memberService = new MemberService();
		
		MemberDTO member = new MemberDTO();
		
		String jsonString = null;
		
		int result = 0;
		
		HttpSession session = request.getSession();
		member = (MemberDTO)session.getAttribute("entryMember");
		
		if ("password".equals(request.getParameter("type"))) {
			member.setPwd(request.getParameter("password"));
			result = memberService.passwordChange(member);
		} else if("phone".equals(request.getParameter("type"))) {
			member.setPhone(request.getParameter("value"));
			result = memberService.phoneChange(member);
		} else if("birth".equals(request.getParameter("type"))) {
			member.setBirth(request.getParameter("value"));
			result = memberService.birthChange(member);
		}
		
		if(result > 0) {
			jsonString = new Gson().toJson("success");
		} else {
			jsonString = new Gson().toJson("fail");
		}
		
		PrintWriter out = response.getWriter();
		out.print(jsonString);
		out.flush();
		out.close();
	}

}
