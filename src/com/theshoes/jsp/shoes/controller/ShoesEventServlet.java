package com.theshoes.jsp.shoes.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.theshoes.jsp.manager.model.dto.EventDTO;
import com.theshoes.jsp.member.model.dto.MemberDTO;
import com.theshoes.jsp.shoes.model.service.ShoesService;

@WebServlet("/shoes/event")
public class ShoesEventServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ShoesService  shoesService = new ShoesService();
		
		EventDTO shoesEvent = new EventDTO();
		shoesEvent.setEventShoesId(Integer.valueOf(request.getParameter("shoesNo")));
		shoesEvent.setEventId(((MemberDTO)request.getSession().getAttribute("entryMember")).getId());
		
		do {
			shoesEvent.setRandomNo((int)(Math.random() * 10000000) + 1);
		} while(shoesService.selectEventByRandomNo(shoesEvent.getRandomNo()) != null); 
		
		int result = shoesService.entryEvent(shoesEvent);
		
		if (result > 0) {
			request.setAttribute("successCode", "insertEvent");
			request.setAttribute("no", request.getParameter("shoesNo"));
			request.getRequestDispatcher("/WEB-INF/views/common/success.jsp").forward(request, response);
		} else {
			request.getRequestDispatcher("/WEB-INF/views/common/errorPage.jsp").forward(request, response);
		}
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
