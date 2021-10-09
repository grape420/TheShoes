package com.theshoes.jsp.manager.model.service;

import static com.theshoes.jsp.common.mybatis.Template.getSqlSession;

import org.apache.ibatis.session.SqlSession;

import com.theshoes.jsp.manager.model.dao.ManagerMapper;

public class RegShoesService {
	
	private ManagerMapper managerMapper;
	

	public int insertModel(String shoesModel) {
		SqlSession session = getSqlSession();
		
		int result = managerMapper.insertModel(session, shoesModel);
		
		if (result > 0) {
			session.commit();
		} else {
			session.rollback();
		}
		
		session.close();
		
		return result;
	}

}
