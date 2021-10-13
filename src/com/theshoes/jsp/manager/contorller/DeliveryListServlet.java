package com.theshoes.jsp.manager.contorller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.theshoes.jsp.common.paging.Pagenation;
import com.theshoes.jsp.common.paging.SelectCriteria;
import com.theshoes.jsp.manager.model.dto.DeliveryDTO;
import com.theshoes.jsp.manager.model.dto.EventDTO;
import com.theshoes.jsp.manager.model.service.DeliveryService;

@WebServlet("/manager/delivery")
public class DeliveryListServlet extends HttpServlet {
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
		
		DeliveryService deliveryService = new DeliveryService();
		
		/* 전체 게시물 수 조회 */
		int totalNoticeCount = deliveryService.selectdeliveryTotalCount();
		System.out.println("shoesList.size : " + totalNoticeCount);
		
		/* 전체 공지사항 목록 조회 */
		SelectCriteria selectCriteria = null;
		
		/* 페이징 처리를 위한 로직 호출 후 페이징 처리에 관한 정보를 담고 있는 인스턴스를 반환받는다. */
		selectCriteria = Pagenation.getSelectCriteria(pageNo, totalNoticeCount, onePost, onePage);
		
		System.out.println(selectCriteria);
		
		List<DeliveryDTO> deliveryList = deliveryService.selectAllDeliveryList(selectCriteria);
		
		for (DeliveryDTO delivery : deliveryList) {
			for (EventDTO event : delivery.getEvent()) {
				if ("1".equals(event.getEventStatus())) {
					event.setEventStatus("미당첨");
				} else if ("2".equals(event.getEventStatus())) {
					event.setEventStatus("비구매");
				} else if ("3".equals(event.getEventStatus())) {
					event.setEventStatus("구매-준비중");
				} else if ("4".equals(event.getEventStatus())) {
					event.setEventStatus("배송중");
				} else if ("5".equals(event.getEventStatus())) {
					event.setEventStatus("배송완료");
				}
			}
		}
		
		String path = "";
		if (deliveryList != null) {
			path = "/WEB-INF/views/manager/managerDelivery.jsp";
			request.setAttribute("pagingPath", "delivery");
			request.setAttribute("deliveryList", deliveryList);
			request.setAttribute("selectCriteria", selectCriteria);
		} else {
			path = "/WEB-INF/views/common/errorPage.jsp";
		}
		
		request.getRequestDispatcher(path).forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
