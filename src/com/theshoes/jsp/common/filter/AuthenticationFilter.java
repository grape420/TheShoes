package com.theshoes.jsp.common.filter;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.theshoes.jsp.member.model.dto.MemberDTO;

@WebFilter(urlPatterns = { /* "/board/*", "/member/*", "/manager/*", "/resell/*", "/common/*" */})
public class AuthenticationFilter implements Filter {
	
	Map<String, List<String>> permitURIList;
	
	public void destroy() {}

	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		
		HttpServletRequest hrequest = (HttpServletRequest) request;
		String uri = hrequest.getRequestURI();
		String intent = uri.replace(hrequest.getContextPath(), "");
		
		System.out.println("intent : " + intent);
		
		/* 세션에 권한이 있는지 확인하여 허용된 url에만 접근 가능하도록 설정한다. */
		MemberDTO loginMember = (MemberDTO) hrequest.getSession().getAttribute("entryMember");
		
		boolean isAuthorized = false;
		if(loginMember != null) {
			
			boolean isPermitAdmin = permitURIList.get("managerPermitList").contains(intent);
			boolean isPermitMember = permitURIList.get("memberPermitList").contains(intent);
			boolean isPermitAll = permitURIList.get("allPermitList").contains(intent);
			if("MANAGER".equals(loginMember.getRole())) {
				
				if(isPermitAdmin || isPermitMember || isPermitAll) {
					isAuthorized = true;
				}
				
			} else if("MEMBER".equals(loginMember.getRole())) {
				
				if((isPermitMember || isPermitAll) && !isPermitAdmin) {
					isAuthorized = true;
				}
				
			}
			
			if(isAuthorized) {
				chain.doFilter(request, response);
			} else {
				((HttpServletResponse) response).sendError(403);
			}
			
		} else {
			
			if(permitURIList.get("allPermitList").contains(intent)) {
				chain.doFilter(request, response);
			} else {
				request.setAttribute("message", "login");
				request.getRequestDispatcher("/WEB-INF/views/common/errorPage.jsp").forward(hrequest, response);
			}
		}
		
	}

	public void init(FilterConfig fConfig) throws ServletException {
		
		permitURIList = new HashMap<>();
		List<String> managerPermitList = new ArrayList<>();
		List<String> memberPermitList = new ArrayList<>();
		List<String> allPermitList = new ArrayList<>();
		
		managerPermitList.add("/faq/reg");
		managerPermitList.add("/faq/delete");
		managerPermitList.add("/faq/modify");
		managerPermitList.add("/board/reg");
		managerPermitList.add("/board/delete");
		managerPermitList.add("/board/modify");
		managerPermitList.add("/manager/board");
		managerPermitList.add("/manager/delivery");
		managerPermitList.add("/manager/shoes");
		managerPermitList.add("/manager/memberList");
		managerPermitList.add("/manager/modMember");
		managerPermitList.add("/manager/modShoes");
		
		memberPermitList.add("/resell/comments/delete");
		memberPermitList.add("/resell/regResell");
		memberPermitList.add("/cs/detail");
		memberPermitList.add("/cs/list");
		memberPermitList.add("/cs/reg");
		memberPermitList.add("/myPage/address");
		memberPermitList.add("/member/logout");
		memberPermitList.add("/member/change");
		memberPermitList.add("/myPage/modifyAddress");
		memberPermitList.add("/myPage/salesHistory");
		memberPermitList.add("/member/signup");
		memberPermitList.add("/myPage/wishList");
		memberPermitList.add("/myPage/withDraw");
		memberPermitList.add("/shoes/pay");
		memberPermitList.add("/shoes/event");

		allPermitList.add("/notice/list");
		allPermitList.add("/board/detail");
		allPermitList.add("/board/list");
		allPermitList.add("/faq/detail");
		allPermitList.add("/faq/list");
		allPermitList.add("/resell/detail");
		allPermitList.add("/resell/resellList");
		allPermitList.add("/common/mainPage");
		allPermitList.add("/common/nav");
		allPermitList.add("/member/findId");
		allPermitList.add("/member/doubleCheck");
		allPermitList.add("/common/nav");
		allPermitList.add("/member/login");
		allPermitList.add("/member/findPassword");
		allPermitList.add("/member/findId");
		allPermitList.add("/shoes/detail");
		allPermitList.add("/shoes/list");
		
		permitURIList.put("adminPermitList", managerPermitList);
		permitURIList.put("memberPermitList", memberPermitList);
		permitURIList.put("allPermitList", allPermitList);
		
	}

}
