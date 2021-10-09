package com.theshoes.jsp.manager.model.dao;

import org.apache.ibatis.session.SqlSession;

public interface ManagerMapper {

	int insertModel(SqlSession session, String shoesModel);

}
