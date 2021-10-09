package com.theshoes.jsp.manager.model.service;

import static com.theshoes.jsp.common.mybatis.Template.getSqlSession;

import org.apache.ibatis.session.SqlSession;

import com.theshoes.jsp.manager.model.dao.ManagerMapper;
import com.theshoes.jsp.shoes.model.dto.ShoesDTO;

public class RegShoesService {
	
	private final ManagerMapper mapper;
	
	public RegShoesService() {
		mapper = new ManagerMapper();
	}

	public int insertShoes(ShoesDTO shoes) {
		SqlSession sqlSession = getSqlSession();
		
		int result = mapper.insertShoes(sqlSession, shoes);
		
		if (result > 0) {
			System.out.println("신발 등록 성공!");
			sqlSession.commit();
		} else {
			System.out.println("신발 등록 실패!");
			sqlSession.rollback();
		}
		
		sqlSession.close();
		
		return result;
	}

}
