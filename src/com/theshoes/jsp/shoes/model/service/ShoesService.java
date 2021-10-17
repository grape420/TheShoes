package com.theshoes.jsp.shoes.model.service;

import static com.theshoes.jsp.common.mybatis.Template.getSqlSession;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.theshoes.jsp.common.paging.SelectCriteria;
import com.theshoes.jsp.manager.model.dto.EventDTO;
import com.theshoes.jsp.manager.model.dto.WinnerDTO;
import com.theshoes.jsp.shoes.model.dao.ShoesDAO;
import com.theshoes.jsp.shoes.model.dto.ShoesDTO;

public class ShoesService {
	
	private ShoesDAO shoesDAO;
	
	public ShoesService() {
		shoesDAO = new ShoesDAO();
	}
	
	public List<ShoesDTO> selectShoesList(String search) {
		SqlSession session = getSqlSession();
		
		List<ShoesDTO> shoesList = shoesDAO.selectShoesList(session, search);
		
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

	public int entryEvent(EventDTO shoesEvent) {
		SqlSession session = getSqlSession();
		
		int result = shoesDAO.entryEvent(session, shoesEvent);
		
		if (result > 0) {
			session.commit();
		} else {
			session.rollback();
		}
		
		session.close();
		
		return result;
	}

	public String selectEventByRandomNo(int randomNo) {
		SqlSession session = getSqlSession();
		
		String userName = shoesDAO.selectEventByRandomNo(session, randomNo);
		
		session.close();
		
		return userName;
	}
	
	public int isEntryUser(String userId) {
		SqlSession session = getSqlSession();
		
		int isEntry = shoesDAO.isEntryUser(session, userId);
		
		session.close();
		
		return isEntry;
	}

	public int selectEvnetNo(EventDTO event) {
		SqlSession session = getSqlSession();
		
		int evnetNo = shoesDAO.selectEvnetNo(session, event);
		
		session.close();
		
		return evnetNo;
	}

	public int payShoes(EventDTO event) {
		SqlSession session = getSqlSession();
		
		int result = 0;
		
		int isEvent = shoesDAO.updateEvent(session, event);

		int isWinner = shoesDAO.updateWinner(session, event);
		
		if ((isEvent > 0) && (isWinner > 0)) {
			session.commit();
		} else {
			session.rollback();
		}
		
		session.close();
		
		return result;
	}

}
