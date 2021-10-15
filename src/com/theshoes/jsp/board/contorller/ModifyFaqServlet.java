package com.theshoes.jsp.board.contorller;

import java.io.IOException;
import java.sql.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.theshoes.jsp.board.model.dto.BoardDTO;
import com.theshoes.jsp.board.model.service.BoardService;

@WebServlet("/faq/modify")
public class ModifyFaqServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/* 기존 값 불러와서 수정 화면에 띄우기 */
	/* selectNoticeDetail 은 조회 수가 올라감 -> 새로운 메소드 이용 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int categoryOrder = Integer.parseInt(request.getParameter("categoryOrder")); 
		
		BoardService boardService = new BoardService();
		BoardDTO faq= boardService.selectModFaqDetail(categoryOrder);
		
		String path = "";
		
		if(faq != null) {
			path = "/WEB-INF/views/faq/modifyFaq.jsp";
			request.setAttribute("faq", faq);
		} else {
			path = "/WEB-INF/views/common/errorPage.jsp";
		}
		
		request.getRequestDispatcher(path).forward(request, response);
	}

	/* 수정된 정보 저장하기 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println("doPost");
		int categoryOrder = Integer.parseInt(request.getParameter("categoryOrder")); 
		System.out.println("int categoryOrder : " + categoryOrder);
		
		/* 사용자가 입력한 정보 받아오기 */
		String faqTitle = request.getParameter("faqTitle");	  		// 공지사항 제목
		String faqWriterId = request.getParameter("faqWriterId");		// 공지사항 작성자 id
		String faqContent = request.getParameter("faqContent");		// 공지사항 세부내용
		String faqRegDateString = request.getParameter("faqRegDate"); 
		
		System.out.println("faqTitle : " + faqTitle);
		System.out.println("faqWriterId : " + faqWriterId);
		System.out.println("faqContent : " + faqContent);
		System.out.println("faqRegDateString : " + faqRegDateString);
		
		/* String -> Date 형변환 */
		Date faqRegDate = Date.valueOf(faqRegDateString);
		
		/* DTO에 값 넣고 전달하기 */
		BoardDTO faq = new BoardDTO();			
		faq.setBoardId(faqWriterId);	
		faq.setBoardTitle(faqTitle);				
		faq.setBoardContent(faqContent);			
		faq.setCategoryOrder(categoryOrder);
		faq.setBoardRegDate(faqRegDate);
		
		System.out.println(faq);
		
		BoardService boardService = new BoardService();
		int result= boardService.updateFaqDetail(faq);

		String path = "";
		
		if(result > 0) {
			path = "/WEB-INF/views/common/success.jsp";
			request.setAttribute("successCode", "updateFaq");
		} else {
			path = "/WEB-INF/views/common/errorPage.jsp";
		}
		
		request.getRequestDispatcher(path).forward(request, response);
	}

}
