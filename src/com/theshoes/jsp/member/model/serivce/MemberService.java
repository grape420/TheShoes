package com.theshoes.jsp.member.model.serivce;

import static com.theshoes.jsp.common.mybatis.Template.getSqlSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import com.theshoes.jsp.member.model.dao.MemberDAO;
import com.theshoes.jsp.member.model.dto.MemberDTO;

public class MemberService {
	
	private final MemberDAO memberDAO;
	
	public MemberService() {
		memberDAO = new MemberDAO();
	}
	
	public MemberDTO loginMember(MemberDTO requestMember) {
		SqlSession session = getSqlSession();
		
		MemberDTO returnMember = null;
		MemberDTO loginMember = memberDAO.selectMemberOne(session, requestMember);

		BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
		if(passwordEncoder.matches(requestMember.getPwd(), loginMember.getPwd())) {
			returnMember = loginMember;
		}
		
		session.close();
		
		return returnMember;
	}

}
