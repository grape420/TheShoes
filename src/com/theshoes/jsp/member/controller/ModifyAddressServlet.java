package com.theshoes.jsp.member.controller;

import java.io.IOException;
import java.sql.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.theshoes.jsp.common.paging.SelectCriteria;
import com.theshoes.jsp.member.model.dto.AddressDTO;
import com.theshoes.jsp.member.model.dto.MemberDTO;
import com.theshoes.jsp.member.model.serivce.AddressService;


@WebServlet("/myPage/modifyAddress")
public class ModifyAddressServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	HttpSession session = request.getSession();
		
	System.out.println("modifyAddress서블릿이랑께");
	
	/* 사용자가 입력한 정보 받아오기 */ 	
	String nameMM =  request.getParameter("nameMM");
	String addressNo = request.getParameter("addressNo");
	String addressName = request.getParameter("addressName2"); 
	String address1MM = request.getParameter("address1"); 
	String address2MM = request.getParameter("address2");
	
	System.out.println("nameMM : " + nameMM);
	System.out.println("addressNo : " + addressNo);
	System.out.println("addressName2 : " + addressName);
	System.out.println("address1 : " + address1MM);
	System.out.println("address2 : " + address2MM);
	
	/* DTO에 값 넣고 전달하기 */
	AddressDTO address = new AddressDTO();
	address.setNameMM(nameMM);
	address.setAddressNo(addressNo);
	address.setAddressName(addressName);
	address.setAddress1MM(address1MM);
	address.setAddress2MM(address2MM);
	
	System.out.println("address" + address);
	
	AddressService addressService = new AddressService();
	
	int result = addressService.updateAddress(address);
	
	if (result > 0) { 
		request.setAttribute("successCode", "updateAddress");
		request.getRequestDispatcher("/WEB-INF/views/common/success.jsp").forward(request, response);
	} else { 
		request.getRequestDispatcher("/WEB-INF/views/common/errorPage.jsp").forward(request, response);
		}
	}
}
