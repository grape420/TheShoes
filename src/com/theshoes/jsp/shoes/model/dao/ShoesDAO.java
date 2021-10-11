package com.theshoes.jsp.shoes.model.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.theshoes.jsp.shoes.model.dto.ShoesDTO;

public class ShoesDAO {

	public List<ShoesDTO> selectShoesList(SqlSession session) {
		return session.selectList("ShoesDAO.selectShoesList");
	}
	
	
	
}
