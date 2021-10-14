package com.theshoes.jsp.manager.model.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.theshoes.jsp.board.model.dto.BoardDTO;
import com.theshoes.jsp.common.paging.SelectCriteria;
import com.theshoes.jsp.manager.model.dto.DeliveryDTO;
import com.theshoes.jsp.member.model.dto.MemberDTO;
import com.theshoes.jsp.shoes.model.dto.ShoesDTO;
import com.theshoes.jsp.shoes.model.dto.ShoesThumbDTO;

public class ManagerMapper {

	public int insertShoes(SqlSession session, ShoesDTO shoes) {
		return session.insert("ManagerMapper.insertShoes", shoes);
	}

	public int insertShoesThumb(SqlSession session, ShoesThumbDTO shoesThumb) {
		return session.insert("ManagerMapper.insertShoesThumb", shoesThumb);
	}

	public List<ShoesDTO> selectShoesList(SqlSession session) {
		return session.selectList("ManagerMapper.selectShoesList");
	}

	public ShoesDTO selectShoesDetail(SqlSession session, int shoesNo) {
		return session.selectOne("ManagerMapper.selectShoesDetail", shoesNo);
	}

	public int updateShoes(SqlSession session, ShoesDTO shoes) {
		System.out.println("여기는 DAO" + shoes.getInfoCategoryNo());
		return session.update("ManagerMapper.updateShoes", shoes);
	}

	public int updateShoesThumb(SqlSession session, ShoesThumbDTO shoesThumb) {
			System.out.println("여기는 DAO : " + shoesThumb);
		return session.update("ManagerMapper.updateShoesThumb", shoesThumb);
	}

	public List<ShoesDTO> selectAllShoesList(SqlSession session, SelectCriteria selectCriteria) {
		System.out.println("여기는 DAO : " + selectCriteria);
		return session.selectList("ManagerMapper.selectAllShoesList", selectCriteria);
	}

	public int selectShoesTotalCount(SqlSession session) {
		return session.selectOne("ManagerMapper.selectShoesTotalCount");
	}

	public int selectMemberTotalCount(SqlSession session) {
		return session.selectOne("ManagerMapper.selectMemberTotalCount");
	}

	public List<MemberDTO> selectAllMemberList(SqlSession session, SelectCriteria selectCriteria) {
		System.out.println("여기는 DAO : " + selectCriteria);
		return session.selectList("ManagerMapper.selectAllMemberList", selectCriteria);
	}

	public MemberDTO selectMemberDetail(SqlSession session, String memberId) {
		return session.selectOne("ManagerMapper.selectMemberDetail", memberId);
	}

	public int modifyBlackList(SqlSession session, MemberDTO member) {
		System.out.println("여기는 DAO : " + member);
		return session.update("ManagerMapper.modifyBlackList", member);
	}

	public int selectDeliveryTotalCount(SqlSession session) {
		return session.selectOne("ManagerMapper.selectDeliveryTotalCount");
	}

	public List<DeliveryDTO> selectAllDeliveryList(SqlSession session, SelectCriteria selectCriteria) {
		System.out.println("여기는 DAO : " + selectCriteria);
		return session.selectList("ManagerMapper.selectAllDeliveryList", selectCriteria);
	}

	public int selectBoardTotalCount(SqlSession session) {
		return session.selectOne("ManagerMapper.selectBoardTotalCount");
	}

	public List<BoardDTO> selectAllBoardList(SqlSession session, SelectCriteria selectCriteria) {
		System.out.println("여기는 DAO : " + selectCriteria);
		return session.selectList("ManagerMapper.selectAllBoardList", selectCriteria);
	}

	public List<ShoesThumbDTO> selectShoesThumbNo(SqlSession session, int shoesNo) {
		return session.selectList("ManagerMapper.selectShoesThumbNo", shoesNo);
	}




	

	

	

	
	

}
