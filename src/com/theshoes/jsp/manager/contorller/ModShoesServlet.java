package com.theshoes.jsp.manager.contorller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import com.theshoes.jsp.manager.model.service.ShoesService;
import com.theshoes.jsp.shoes.model.dto.ShoesDTO;
import com.theshoes.jsp.shoes.model.dto.ShoesThumbDTO;

import net.coobird.thumbnailator.Thumbnails;

@WebServlet("/manager/modShoes")
public class ModShoesServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int shoesNo = Integer.valueOf(request.getParameter("shoesNo"));
		
		ShoesService shoesService = new ShoesService();
		ShoesDTO shoes = shoesService.selectShoesDetail(shoesNo);
		
		String path = "";
		if(shoes != null) {
			path = "/WEB-INF/views/manager/modShoes.jsp";
			request.setAttribute("shoes", shoes);
		} else {
			path = "/WEB-INF/views/common/errorPage.jsp";
		}
		
		request.getRequestDispatcher(path).forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}
}
