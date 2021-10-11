package com.theshoes.jsp.manager.contorller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.theshoes.jsp.manager.model.service.ShoesService;
import com.theshoes.jsp.shoes.model.dto.ShoesDTO;

@WebServlet("/manager/shoes")
public class ShoesListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		ShoesService shoesService = new ShoesService();
		
		List<ShoesDTO> shoesList = shoesService.selectShoesList();
		
		System.out.println(shoesList.get(0));
		String path = "";
		if (shoesList != null) {
			path = "/WEB-INF/views/manager/managerShoes.jsp";
			request.setAttribute("shoesList", shoesList);
		} else {
			path = "/WEB-INF/views/common/errorPage.jsp";
		}
		
		request.getRequestDispatcher(path).forward(request, response);
	}

}
