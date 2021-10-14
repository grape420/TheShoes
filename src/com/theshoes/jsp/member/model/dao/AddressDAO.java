package com.theshoes.jsp.member.model.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.theshoes.jsp.board.model.dto.BoardDTO;
import com.theshoes.jsp.common.paging.SelectCriteria;
import com.theshoes.jsp.member.model.dto.AddressDTO;

public class AddressDAO {

	
	/* 주소록 추가 메소드 */ 
	public int insertAddress(SqlSession session, AddressDTO newAddress) {
		return session.insert("AddressDAO.insertAddress",newAddress);
			
	}

	/* 주소록 목록 전체 조회 메소드 */
	public static List<AddressDTO> selectAllAddressList(SqlSession session) {
		System.out.println("나는야 DAO DAO DAO ");
		
		return session.selectList("AddressDAO.selectAllAddressList");
	}

	/* 주소록 수정 메소드 */ 
	public int updateAddress(SqlSession session, AddressDTO address) {
		return session.update("AddressDAO.updateAddress", address);

	
	}


}
