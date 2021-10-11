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

@WebServlet("/member/findPassword")
public class FindPasswordServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if(request.getParameter("step") == null) {
			request.getRequestDispatcher("/WEB-INF/views/member/findPassword1.jsp").forward(request, response);
		} else if("1".equals(request.getParameter("step"))) {
			response.setContentType("application/json; charset=UTF-8");
			
			MemberService memberService = new MemberService();
			
			MemberDTO member = new MemberDTO();
			
			member = memberService.selectMemberById(request.getParameter("id"));
			
			String jsonString = null;
			
			if (member != null) {
				jsonString = new Gson().toJson("sueccess");
				HttpSession session = request.getSession();
				session.setAttribute("findMember", member);
			} else {
				jsonString = new Gson().toJson("fail");
			}
			
			PrintWriter out = response.getWriter();
			out.print(jsonString);
			out.flush();
			out.close();
		} else if ("2".equals(request.getParameter("step"))) {
			request.getRequestDispatcher("/WEB-INF/views/member/findPassword2.jsp").forward(request, response);
		} else if ("4".equals(request.getParameter("step"))) {
			response.setContentType("application/json; charset=UTF-8");
			
			HttpSession session = request.getSession();
			MemberDTO member = (MemberDTO)session.getAttribute("findMember");
			
			String jsonString = new Gson().toJson(SmtpNaverSsl.sendEmailMessage(member.getEmail(), null));
			
			PrintWriter out = response.getWriter();
			out.print(jsonString);
			out.flush();
			out.close();
		}else if ("3".equals(request.getParameter("step"))) {
			request.getRequestDispatcher("/WEB-INF/views/member/findPassword3.jsp").forward(request, response);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		MemberService memberService = new MemberService();
		
		HttpSession session = request.getSession();
		MemberDTO member = (MemberDTO)session.getAttribute("findMember");
		
		member.setPwd(request.getParameter("password"));
		
		int result = memberService.passwordChange(member);
		
		request.getSession().invalidate();
		
		if (result > 0) {
			request.getRequestDispatcher("/WEB-INF/views/member/login.jsp").forward(request, response);
		} else {
			request.getRequestDispatcher("/WEB-INF/views/common/errorPage.jsp").forward(request, response);
		}
	}

}
