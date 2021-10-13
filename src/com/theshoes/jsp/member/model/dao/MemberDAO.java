package com.theshoes.jsp.member.model.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.theshoes.jsp.member.model.dto.MemberDTO;
import com.theshoes.jsp.member.model.dto.WishListDTO;

public class MemberDAO {

	public MemberDTO selectMemberById(SqlSession session, String id) {
		return session.selectOne("MemberDAO.selectMemberById", id);
	}

	public MemberDTO selectMemberByEmail(SqlSession session, String email) {
		return session.selectOne("MemberDAO.selectMemberByEmail", email);
	}

	public int registMember(SqlSession session, MemberDTO member) {
		return session.insert("MemberDAO.registMember", member);
	}

	public int passwordChange(SqlSession session, MemberDTO member) {
		return session.update("MemberDAO.passwordChange", member);
	}

	public int withDraw(SqlSession session, MemberDTO member) {
		return session.update("MemberDAO.withDraw", member);
	}

	public List<MemberDTO> selectAllWishList(SqlSession session, String id) {
		return session.selectOne("MemberDAO.selectAllWishList", id);
	}


}
