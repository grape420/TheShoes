package com.theshoes.jsp.shoes.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.theshoes.jsp.common.paging.Pagenation;
import com.theshoes.jsp.common.paging.SelectCriteria;
import com.theshoes.jsp.shoes.model.dto.ShoesDTO;
import com.theshoes.jsp.shoes.model.service.ShoesService;

@WebServlet("/shoes/detail")
public class ShoesDetailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ShoesService  shoesService = new ShoesService();
		
		int no = Integer.valueOf(request.getParameter("no"));
		
		ShoesDTO shoesDetail = shoesService.selectShoesDetail(no);
		
		System.out.println(shoesDetail.toString());
		String path = "/WEB-INF/views/shoes/shoesDetail.jsp?no=" + no;
		
		request.setAttribute("shoesDetail", shoesDetail);

		request.getRequestDispatcher(path).forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
