package com.theshoes.jsp.member.controller;

import java.io.IOException;
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

@WebServlet("/myPage/address")
public class AddressServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		
		/* 전체 주소록 조회 */ 
		List<AddressDTO> addressList = new AddressService().selectAllAddressList();
		
		System.out.println("addressList : " + addressList);
		
		SelectCriteria selectCriteria = null;
		
		String path = "";
		if(addressList != null) {
			path = "/WEB-INF/views/myPage/myAddress.jsp";
			request.setAttribute("addressList", addressList);
		} else {
			path = "/WEB-INF/views/common/errorPage.jsp";
		}
		request.getRequestDispatcher(path).forward(request, response);
		
		
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		/* address 추가 */  
		HttpSession session = request.getSession();
		String nameMM =  ((MemberDTO)session.getAttribute("entryMember")).getId();
		String addressNo = request.getParameter("addressNo");
		String addressName = request.getParameter("addressNameMM"); 
		String address1MM = request.getParameter("address1"); 
		String address2MM = request.getParameter("address2");
		
		System.out.println("AddressServlet 쓰윽~");
		
		AddressDTO newAddress = new AddressDTO();
		newAddress.setNameMM(nameMM);
		newAddress.setAddressNo(addressNo);
		newAddress.setAddressName(addressName);
		newAddress.setAddress1MM(address1MM);
		newAddress.setAddress2MM(address2MM);
		
		System.out.println("memberController newAddress : " + newAddress);
		
		AddressService addressService = new AddressService();
		int result = addressService.insertAddress(newAddress);
		
		String path = "";
		
		/* address 추가 후 주소록 메인페이지로 이동  */
		if(result > 0) {
			path = "/WEB-INF/views/common/success.jsp";
			request.setAttribute("myAddressCode", "insertAddress");
		} else {
			path = "/WEB-INF/views/common/errorPage.jsp";
		}
		request.getRequestDispatcher(path).forward(request, response);
	}
	

	
}
