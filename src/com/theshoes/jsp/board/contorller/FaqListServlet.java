package com.theshoes.jsp.board.contorller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.theshoes.jsp.board.model.dto.BoardDTO;
import com.theshoes.jsp.board.model.service.BoardService;

import com.theshoes.jsp.common.paging.Pagenation;
import com.theshoes.jsp.common.paging.SelectCriteria;

@WebServlet("/faq/list")
public class FaqListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {		
		/* 페이징처리 */
		int pageNo = 1;						// 기본 시작 페이지번호
		int onePost = 10;					// 한 페이지에 노출시킬 게시글의 수
		int onePage = 5;					// 한번에 보여줄 페이지 버튼의 갯수
		
		String currentPage = request.getParameter("currentPage");		// 현재 페이지 값 
		
		if(currentPage != null && !"".equals(currentPage)) {
			pageNo = Integer.parseInt(currentPage);
		}
		
		BoardService boardService = new BoardService();

		
		/* 전체 게시물 수 조회 */
		int totalFaqCount = boardService.selectFaqTotalCount();
		System.out.println("faqList.size : " + totalFaqCount);

		/* 전체 공지사항 목록 조회 */
		SelectCriteria selectCriteria = null;

		/* 페이징 처리를 위한 로직 호출 후 페이징 처리에 관한 정보를 담고 있는 인스턴스를 반환받는다. */
		selectCriteria = Pagenation.getSelectCriteria(pageNo, totalFaqCount, onePost, onePage);
		
		System.out.println(selectCriteria);

		List<BoardDTO> faqList = boardService.selectAllFaqList(selectCriteria);
		System.out.println(faqList);
		
		String path = "";
		
		if(faqList != null) {
			
			path = "/WEB-INF/views/faq/faqList.jsp";
			request.setAttribute("pagingPath", "faq/list");			
			request.setAttribute("faqList", faqList);
			request.setAttribute("selectCriteria", selectCriteria);

		} else {
			path = "/WEB-INF/views/common/errorPage.jsp";
		}
		request.getRequestDispatcher(path).forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}
}
