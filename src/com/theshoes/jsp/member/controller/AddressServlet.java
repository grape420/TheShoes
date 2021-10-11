package com.theshoes.jsp.member.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.theshoes.jsp.member.model.dto.AddressDTO;
import com.theshoes.jsp.member.model.serivce.AddressService;

@WebServlet("/myPage/address")
public class AddressServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String path = "/WEB-INF/myPage/myAddress.jsp";
		
		request.getRequestDispatcher(path).forward(request, response);
	}	
		

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		System.out.println("addressServlet");
		
		String addressName = request.getParameter("addressName"); 
		String nameMM = request.getParameter("nameMM");
		String PhoneMM = request.getParameter("phoneMM"); 
		String address1MM = request.getParameter("address1MM"); 
		String address2MM = request.getParameter("address2MM");
		
		AddressDTO newAddress = new AddressDTO();
		newAddress.setAddressName(addressName);
		newAddress.setNameMM(nameMM);
		newAddress.setPhoneMM(PhoneMM);
		newAddress.setAddress1MM(address1MM);
		newAddress.setAddress2MM(address2MM);
		
		AddressService addressService = new AddressService();
		int result = addressService.insertAddress(newAddress);
		
		System.out.println("memberController newAddress : " + newAddress);
	
	}
	
}
