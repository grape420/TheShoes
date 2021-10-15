package com.theshoes.jsp.shoes.model.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.theshoes.jsp.common.paging.SelectCriteria;
import com.theshoes.jsp.shoes.model.dto.ShoesDTO;

public class ShoesDAO {

	public List<ShoesDTO> selectShoesList(SqlSession session, SelectCriteria selectCriteria) {
		return session.selectList("ShoesDAO.selectShoesList", selectCriteria);
	}

	public int selectShoesListCnt(SqlSession session) {
		return session.selectOne("ShoesDAO.selectShoesListCnt");
	}

	public ShoesDTO selectShoesDetail(SqlSession session, int no) {
		return session.selectOne("ShoesDAO.selectShoesDetail", no);
	}
	
}
