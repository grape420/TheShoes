package com.theshoes.jsp.manager.model.dao;

import org.apache.ibatis.session.SqlSession;

import com.theshoes.jsp.shoes.model.dto.ShoesDTO;
import com.theshoes.jsp.shoes.model.dto.ShoesThumbDTO;

public class ManagerMapper {

	public int insertShoes(SqlSession session, ShoesDTO shoes) {
		return session.insert("ManagerMapper.insertShoes", shoes);
	}

	public int insertShoesThumb(SqlSession session, ShoesThumbDTO shoesThumb) {
		return session.insert("ManagerMapper.insertShoesThumb", shoesThumb);
	}

	

	

	

	
	

}
