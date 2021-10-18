package com.theshoes.jsp.shoes.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.theshoes.jsp.member.model.dto.MemberDTO;
import com.theshoes.jsp.member.model.dto.WishDTO;
import com.theshoes.jsp.member.model.serivce.MemberService;
import com.theshoes.jsp.shoes.model.dto.ShoesDTO;
import com.theshoes.jsp.shoes.model.service.ShoesService;

@WebServlet("/shoes/detail")
public class ShoesDetailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ShoesService  shoesService = new ShoesService();
		
		// sort로 사용자 구분
		// 0 : 비로그인, 1 : 로그인했지만 응모 안함, 2 : 응모까지 완료함
		int sort = 0;
		int no = Integer.valueOf(request.getParameter("no"));
		
		ShoesDTO shoesDetail = shoesService.selectShoesDetail(no);
		
		String path = "/WEB-INF/views/shoes/shoesDetail.jsp?no=" + no;
		
		request.setAttribute("shoesDetail", shoesDetail);
		
		// 세션체크
		MemberDTO member = (MemberDTO) request.getSession().getAttribute("entryMember");
		
		// 로그인한 사용자이면
		if(member != null) {
			MemberDTO member2 = (new MemberService().selectAllWishList(member.getId()));
			if(member2 != null) {
				for(WishDTO wish : member2.getWishList()) {
					if(wish.getWishNo() == no) {
						request.setAttribute("flag", "flag");
					}
				}
			}
			
			sort = 1;
			
			Map<String, String> map = new HashMap<>();
			map.put("id", member.getId());
			map.put("no", no + "");
			
			// 응모한사람인지 체크
			int isEntry = shoesService.isEntryUser(map);
			if(isEntry == 1)
				sort = 2;
		}
		
		request.setAttribute("shoesDetail", shoesDetail);
		request.setAttribute("sort", sort);

		request.getRequestDispatcher(path).forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
