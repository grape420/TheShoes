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

@WebServlet("/board/list")
public class BoardListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("0");
//		/* 페이징처리 */
//		String currentPage = request.getParameter("currentPage");
//		int pageNo = 1;
//		
//		if(currentPage != null && !"".equals(currentPage)) {
//			pageNo = Integer.parseInt(currentPage);
//		}
//		
//		/* 전체 게시물 수 조회 */
		BoardService boardService = new BoardService();
//		int totalNoticeCount = boardService.selectNoticeTotalCount();
//		
//		System.out.println("totalNoticeCount : " + totalNoticeCount);
//		/* 한 페이지에 보여 줄 게시물 수 */
//		int limit = 10;		
//		/* 한 번에 보여질 페이징 버튼의 갯수 */
//		int buttonAmount = 5;
//		
//		/* 페이징 처리를 위한 로직 호출 후 페이징 처리에 관한 정보를 담고 있는 인스턴스를 반환받는다. */
//		SelectCriteria selectCriteria = null;
//		selectCriteria = Pagenation.getSelectCriteria(pageNo, totalNoticeCount, limit, buttonAmount);
//		
//		System.out.println(selectCriteria);
		
		System.out.println("noticeList : ");
		/* 조회 */
		List<BoardDTO> noticeList = boardService.selectAllNoticeList();
		
		String path = "";
		if(noticeList != null) {
			path = "/WEB-INF/views/board/boardList.jsp";
			request.setAttribute("noticeList", noticeList);
		} else {
			path = "/WEB-INF/views/common/errorPage.jsp";
		}
		request.getRequestDispatcher(path).forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}
}
