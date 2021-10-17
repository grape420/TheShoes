package com.theshoes.jsp.shoes.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.theshoes.jsp.manager.model.dto.EventDTO;
import com.theshoes.jsp.manager.model.dto.WinnerDTO;
import com.theshoes.jsp.member.model.dto.AddressDTO;
import com.theshoes.jsp.member.model.dto.MemberDTO;
import com.theshoes.jsp.member.model.serivce.AddressService;
import com.theshoes.jsp.shoes.model.dto.ShoesDTO;
import com.theshoes.jsp.shoes.model.service.ShoesService;

@WebServlet("/shoes/pay")
public class PayShoesServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id =  ((MemberDTO)(request.getSession().getAttribute("entryMember"))).getId();
		List<AddressDTO> addressList = new AddressService().selectAllAddressList(id);
		
		int no = Integer.valueOf(request.getParameter("shoesNo"));
		ShoesDTO shoes = new ShoesService().selectShoesDetail(no);
		
		request.setAttribute("shoes", shoes);
		request.setAttribute("addressList", addressList);
		request.getRequestDispatcher("/WEB-INF/views/shoes/pay.jsp").forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ShoesService  shoesService = new ShoesService();
		String shoesNo =  request.getParameter("shoesNo");
		String id = ((MemberDTO)(request.getSession()).getAttribute("entryMember")).getId();
		String zipCode = request.getParameter("zipCode");
		String address = request.getParameter("detailAddress");
		
		EventDTO event = new EventDTO();
		event.setEventId(id);
		event.setEventShoesId(Integer.valueOf(shoesNo));
		
		int eventNo = shoesService.selectEvnetNo(event);
		
		event.setEventNo(eventNo);
		event.setEventId(zipCode);
		event.setEventStatus(address);
		
		int result = shoesService.payShoes(event);
		
		if(result > 0) {
			System.out.println("Test");
			request.getRequestDispatcher("/index.jsp").forward(request, response);
		} else {
			request.getRequestDispatcher("/WEB-INF/views/common/errorPage.jsp").forward(request, response);
		}
	}

}
