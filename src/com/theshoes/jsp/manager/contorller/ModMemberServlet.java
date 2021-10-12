package com.theshoes.jsp.manager.contorller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.theshoes.jsp.manager.model.service.ManagerMemberService;
import com.theshoes.jsp.member.model.dto.MemberDTO;

@WebServlet("/manager/modMember")
public class ModMemberServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String memberId = request.getParameter("memberId");
		
		ManagerMemberService managerMemberService = new ManagerMemberService();
		MemberDTO member = managerMemberService.selectMemberDetail(memberId);
		
		String path = "";
		if(member != null) {
			path = "/WEB-INF/views/manager/modMember.jsp";
			request.setAttribute("member", member);
		} else {
			path = "/WEB-INF/views/common/errorPage.jsp";
		}
		
		request.getRequestDispatcher(path).forward(request, response);
			
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}
}
