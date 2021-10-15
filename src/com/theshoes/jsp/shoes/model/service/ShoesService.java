package com.theshoes.jsp.shoes.model.service;

import static com.theshoes.jsp.common.mybatis.Template.getSqlSession;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.theshoes.jsp.common.paging.SelectCriteria;
import com.theshoes.jsp.shoes.model.dao.ShoesDAO;
import com.theshoes.jsp.shoes.model.dto.ShoesDTO;

public class ShoesService {
	
	private ShoesDAO shoesDAO;
	
	public ShoesService() {
		shoesDAO = new ShoesDAO();
	}
	
	public List<ShoesDTO> selectShoesList(SelectCriteria selectCriteria) {
		SqlSession session = getSqlSession();
		
		List<ShoesDTO> shoesList = shoesDAO.selectShoesList(session, selectCriteria);
		
		session.close();
		
		return shoesList;
		
	}
	
	public List<ShoesDTO> selectShoesList() {
		SqlSession session = getSqlSession();
		
		List<ShoesDTO> shoesList = shoesDAO.selectShoesList(session);
		
		session.close();
		
		return shoesList;
		
	}

	public int selectShoesListCnt() {
		SqlSession session = getSqlSession();
		
		int cnt = shoesDAO.selectShoesListCnt(session);
		
		session.close();
		
		return cnt;
	}
	
	public ShoesDTO selectShoesDetail(int no) {
		SqlSession session = getSqlSession();
		
		ShoesDTO shoesDetail = shoesDAO.selectShoesDetail(session, no);
		
		session.close();
		
		return shoesDetail;
		
	}

	public int isEntryUser(String userId) {
		
		SqlSession session = getSqlSession();
		
		int isEntry = shoesDAO.isEntryUser(session, userId);
		
		session.close();
		
		return isEntry;
	}

}
