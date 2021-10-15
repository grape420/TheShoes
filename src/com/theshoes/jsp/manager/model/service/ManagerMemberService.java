package com.theshoes.jsp.manager.model.service;

import static com.theshoes.jsp.common.mybatis.Template.getSqlSession;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.theshoes.jsp.common.paging.SelectCriteria;
import com.theshoes.jsp.manager.model.dao.ManagerDAO;
import com.theshoes.jsp.member.model.dto.MemberDTO;

public class ManagerMemberService {
	
	private final ManagerDAO mapper;
	
	public ManagerMemberService() {
		mapper = new ManagerDAO();
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

	public int modifyBlackList(MemberDTO member) {
		SqlSession session = getSqlSession();
		
		System.out.println("여기는 서비스");
		
		int result = mapper.modifyBlackList(session, member);
		
		System.out.println("여기는 서비스 result : " + result);
		
		if(result > 0) {
			session.commit();
		} else {
			session.rollback();
		}
		
		session.close();
		
		return result;
	}

}
