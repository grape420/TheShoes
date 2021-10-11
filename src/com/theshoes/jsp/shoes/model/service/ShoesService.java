package com.theshoes.jsp.shoes.model.service;

import static com.theshoes.jsp.common.mybatis.Template.getSqlSession;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.theshoes.jsp.shoes.model.dao.ShoesDAO;
import com.theshoes.jsp.shoes.model.dto.ShoesDTO;

public class ShoesService {
	
	private ShoesDAO shoesDAO;
	
	public ShoesService() {
		shoesDAO = new ShoesDAO();
	}
	
	public List<ShoesDTO> selectShoesList() {
		SqlSession session = getSqlSession();
		
		List<ShoesDTO> shoesList = shoesDAO.selectShoesList(session);
		
		session.close();
		
		return shoesList;
		
	}

}
