package com.theshoes.jsp.member.model.dao;

import org.apache.ibatis.session.SqlSession;

import com.theshoes.jsp.member.model.dto.MemberDTO;

public class MemberDAO {

	public MemberDTO selectMemberOne(SqlSession session, MemberDTO requestMember) {
		return session.selectOne("MemberDAO.selectMemberOne", requestMember);
	}

}
