package com.theshoes.jsp.manager.model.service;

import static com.theshoes.jsp.common.mybatis.Template.getSqlSession;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.theshoes.jsp.common.paging.SelectCriteria;
import com.theshoes.jsp.manager.model.dao.ManagerMapper;
import com.theshoes.jsp.member.model.dto.MemberDTO;
import com.theshoes.jsp.shoes.model.dto.ShoesDTO;

public class ManagerMemberService {
	
	private final ManagerMapper mapper;
	
	public ManagerMemberService() {
		mapper = new ManagerMapper();
	}

	public int selectMemberTotalCount() {
		SqlSession session = getSqlSession();
		
		int totalCount = mapper.selectMemberTotalCount(session);
		
		session.close();
		
		return totalCount;
	}

	public List<MemberDTO> selectAllMemberList(SelectCriteria selectCriteria) {
		SqlSession session = getSqlSession();
		
		List<MemberDTO> memberList = mapper.selectAllMemberList(session, selectCriteria);
		System.out.println("memberList : " + memberList);
		
		session.close();
		
		return memberList;
	}

	public MemberDTO selectMemberDetail(String memberId) {
		SqlSession session = getSqlSession();
		MemberDTO memberDetail = null;
		
		memberDetail = mapper.selectMemberDetail(session, memberId);
		
		if (memberDetail != null) {
			session.commit();
		} else {
			session.rollback();
		}
		
		session.close();
		
		return memberDetail;
	}

}
