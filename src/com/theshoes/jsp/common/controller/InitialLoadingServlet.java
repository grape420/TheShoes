package com.theshoes.jsp.common.controller;

import javax.servlet.ServletConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;

import com.theshoes.jsp.common.config.ConfigLocation;

@WebServlet(urlPatterns = {}, loadOnStartup = 1)
public class InitialLoadingServlet extends HttpServlet {
	
	private static final long serialVersionUID = -4477033769335888642L;

	@Override
	public void init(ServletConfig config) {
		
		ConfigLocation.mybatisConfigLocation = config.getServletContext().getInitParameter("mybatis-config-location");
		
	}
}
