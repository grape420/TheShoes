package com.theshoes.jsp.member.model.dao;

import org.apache.ibatis.session.SqlSession;

import com.theshoes.jsp.member.model.dto.MemberDTO;

public class MemberDAO {

	public MemberDTO selectMemberById(SqlSession session, String id) {
		return session.selectOne("MemberDAO.selectMemberById", id);
	}

	public MemberDTO selectMemberByEmail(SqlSession session, String email) {
		return session.selectOne("MemberDAO.selectMemberByEmail", email);
	}

}
