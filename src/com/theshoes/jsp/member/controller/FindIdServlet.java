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
import com.theshoes.jsp.common.smtp.SmtpNaverSsl;
import com.theshoes.jsp.member.model.dto.MemberDTO;
import com.theshoes.jsp.member.model.serivce.MemberService;

@WebServlet("/member/findId")
public class FindIdServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if(request.getParameter("email") == null) {
			request.getRequestDispatcher("/WEB-INF/views/member/findId.jsp").forward(request, response);
		} else {
			response.setContentType("application/json; charset=UTF-8");
			MemberService memberService = new MemberService();
			MemberDTO member = null;
			String jsonString = null;
			
			member = memberService.selectMemberByEmail(request.getParameter("email"));

			if(member != null ) {
				jsonString = new Gson().toJson(SmtpNaverSsl.sendEmailMessage(request.getParameter("email"), member.getId()));
			} else {
				jsonString = new Gson().toJson("fail");
			}
			
			PrintWriter out = response.getWriter();
			out.print(jsonString);
			out.flush();
			out.close();
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
