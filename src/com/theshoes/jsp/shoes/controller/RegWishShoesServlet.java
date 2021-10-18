package com.theshoes.jsp.shoes.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.theshoes.jsp.member.model.dto.MemberDTO;
import com.theshoes.jsp.member.model.dto.WishDTO;
import com.theshoes.jsp.member.model.serivce.MemberService;

@WebServlet("/shoes/regWish")
public class RegWishShoesServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		WishDTO wish = new WishDTO();
		
		wish.setWishId(((MemberDTO)(request.getSession().getAttribute("entryMember"))).getId());
		wish.setWishNo(Integer.valueOf(request.getParameter("shoesNo")));

		int result = new MemberService().insertWish(wish);
		
		String jsonString = null;
		
		if(result > 0) {
			jsonString = new Gson().toJson("success");
		} else {
			jsonString = new Gson().toJson("fail");
		}
		
		PrintWriter out = response.getWriter();
		out.print(jsonString);
		out.flush();
		out.close();
	}

}
