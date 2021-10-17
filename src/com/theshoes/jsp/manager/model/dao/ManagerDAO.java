package com.theshoes.jsp.manager.model.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.theshoes.jsp.board.model.dto.BoardDTO;
import com.theshoes.jsp.common.paging.SelectCriteria;
import com.theshoes.jsp.manager.model.dto.WinnerDTO;
import com.theshoes.jsp.member.model.dto.MemberDTO;
import com.theshoes.jsp.shoes.model.dto.ShoesDTO;
import com.theshoes.jsp.shoes.model.dto.ShoesThumbDTO;

public class ManagerDAO {

	public int insertShoes(SqlSession session, ShoesDTO shoes) {
		return session.insert("ManagerDAO.insertShoes", shoes);
	}

	public int insertShoesThumb(SqlSession session, ShoesThumbDTO shoesThumb) {
		return session.insert("ManagerDAO.insertShoesThumb", shoesThumb);
	}

	public List<ShoesDTO> selectShoesList(SqlSession session) {
		return session.selectList("ManagerDAO.selectShoesList");
	}

	public ShoesDTO selectShoesDetail(SqlSession session, int shoesNo) {
		return session.selectOne("ManagerDAO.selectShoesDetail", shoesNo);
	}

	public int updateShoes(SqlSession session, ShoesDTO shoes) {
		System.out.println("여기는 DAO" + shoes.getInfoCategoryNo());
		return session.update("ManagerDAO.updateShoes", shoes);
	}

	public int updateShoesThumb(SqlSession session, ShoesThumbDTO shoesThumb) {
			System.out.println("여기는 DAO : " + shoesThumb);
		return session.update("ManagerDAO.updateShoesThumb", shoesThumb);
	}

	public List<ShoesDTO> selectAllShoesList(SqlSession session, SelectCriteria selectCriteria) {
		System.out.println("여기는 DAO : " + selectCriteria);
		return session.selectList("ManagerDAO.selectAllShoesList", selectCriteria);
	}

	public int selectShoesTotalCount(SqlSession session) {
		return session.selectOne("ManagerDAO.selectShoesTotalCount");
	}

	public int selectMemberTotalCount(SqlSession session) {
		return session.selectOne("ManagerDAO.selectMemberTotalCount");
	}

	public List<MemberDTO> selectAllMemberList(SqlSession session, SelectCriteria selectCriteria) {
		System.out.println("여기는 DAO : " + selectCriteria);
		return session.selectList("ManagerDAO.selectAllMemberList", selectCriteria);
	}

	public MemberDTO selectMemberDetail(SqlSession session, String memberId) {
		return session.selectOne("ManagerDAO.selectMemberDetail", memberId);
	}

	public int modifyBlackList(SqlSession session, MemberDTO member) {
		System.out.println("여기는 DAO : " + member);
		return session.update("ManagerDAO.modifyBlackList", member);
	}

	public int selectDeliveryTotalCount(SqlSession session) {
		return session.selectOne("ManagerDAO.selectDeliveryTotalCount");
	}

	public List<WinnerDTO> selectAllDeliveryList(SqlSession session, SelectCriteria selectCriteria) {
		System.out.println("여기는 DAO : " + selectCriteria);
		return session.selectList("ManagerDAO.selectAllDeliveryList", selectCriteria);
	}

	public int selectBoardTotalCount(SqlSession session) {
		return session.selectOne("ManagerDAO.selectBoardTotalCount");
	}

	public List<BoardDTO> selectAllBoardList(SqlSession session, SelectCriteria selectCriteria) {
		System.out.println("여기는 DAO : " + selectCriteria);
		return session.selectList("ManagerDAO.selectAllBoardList", selectCriteria);
	}

	public List<ShoesThumbDTO> selectShoesThumbNo(SqlSession session, int shoesNo) {
		return session.selectList("ManagerDAO.selectShoesThumbNo", shoesNo);
	}

}
