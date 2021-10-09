package com.theshoes.jsp.manager.model.dao;

import org.apache.ibatis.session.SqlSession;

import com.theshoes.jsp.shoes.model.dto.ShoesDTO;

public class ManagerMapper {

	public int insertShoes(SqlSession sqlSession, ShoesDTO shoes) {
		return sqlSession.insert("ManagerMapper.insertShoes", shoes);
	}

	

	
	

}
