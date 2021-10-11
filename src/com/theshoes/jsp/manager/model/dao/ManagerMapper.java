package com.theshoes.jsp.manager.model.dao;

import java.util.List;

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

	public List<ShoesDTO> selectShoesList(SqlSession session) {
		return session.selectList("ManagerMapper.selectShoesList");
	}

	public ShoesDTO selectShoesDetail(SqlSession session, int shoesNo) {
		return session.selectOne("ManagerMapper.selectShoesDetail", shoesNo);
	}

	public int updateShoes(SqlSession session, ShoesDTO shoes) {
		System.out.println("여기는 DAO");
		return session.insert("ManagerMapper.updateShoes", shoes);
	}

	public int updateShoesThumb(SqlSession session, ShoesThumbDTO shoesThumb) {
		return session.update("ManagerMapper.updateShoesThumb", shoesThumb);
	}

	

	

	

	
	

}
