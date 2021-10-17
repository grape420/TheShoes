package com.theshoes.jsp.cs.controller;

import java.io.IOException;
import java.sql.Date;
import java.util.Calendar;
import java.util.GregorianCalendar;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.theshoes.jsp.cs.model.dto.QuestionDTO;
import com.theshoes.jsp.cs.model.dto.RequestDTO;
import com.theshoes.jsp.cs.model.service.QuestionService;

@WebServlet("/cs/detail")
public class detailQuestionServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		/* 질문 조회용 */
		int csNo = Integer.parseInt(request.getParameter("csNo"));
		
		QuestionService questionService = new QuestionService();
		
		QuestionDTO csQuestion = questionService.selectCsDetail(csNo);
		System.out.println("servlet question : " + csQuestion);
		
		/* 답변 조회용 */
		/* 등록된 답변 있는지 조회 - 있으면 jsp에 띄우고 없으면 등록창 띄우기 */
//		int requestCount = questionService.selectRequestCount();
//		System.out.println("여기가 어딘데!!!!! 서블릿 답변 갯수 : " + requestCount);
		
		RequestDTO csRequest = questionService.selectRequestDetail(csNo);
		System.out.println("servlet - request : " + csRequest);

		/* 답변이 있다면 불러오기 */
//		if (csRequest != null) {
			request.setAttribute("csRequest", csRequest);
//		}
		
		String path = "";

		if (csQuestion != null) {
			path = "/WEB-INF/views/cs/detailQuestion.jsp";
			request.setAttribute("csQuestion", csQuestion);
			System.out.print("아 왜 안나오는데!!!");
//			request.setAttribute("requestCount", requestCount);
		} else {
			path = "/WEB-INF/views/common/errorPage.jsp";
		}
		
		request.getRequestDispatcher(path).forward(request, response);
	}

	/* 관리자 답변 등록 메소드 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		/* 사용자가 입력한 정보 받아오기 */
		String managerId = request.getParameter("managerId");						// 답변 작성 관리자 id
		String requestContent = request.getParameter("requestContent");				// 답변글 내용
		int csRequestNo = Integer.parseInt(request.getParameter("csRequestNo"));	// 문의글 번호		
		
		/* 작성일 - 오늘 날짜 객체 생성 */
		Calendar cal = new GregorianCalendar();
		
		/* 작성일 - java.sql.Date 형으로 변환 */
		Date requestRegDate = new Date(cal.getTimeInMillis());
		
		/* RequestDTO에 값 넣기 */
		RequestDTO requestDTO = new RequestDTO();		
		requestDTO.setCsRequestNo(csRequestNo);
		requestDTO.setManagerId(managerId);	
		requestDTO.setRequestContent(requestContent);				
		requestDTO.setRequestRegDate(requestRegDate);			
		
		QuestionService questionService = new QuestionService();

		int result = questionService.registRequest(requestDTO);
				
		String path = "";
		
		if (result > 0) {
			path = "/WEB-INF/views/common/success.jsp";
			request.setAttribute("successCode", "registRequest");
			request.getRequestDispatcher(path).forward(request, response);
		} 
	}

}
