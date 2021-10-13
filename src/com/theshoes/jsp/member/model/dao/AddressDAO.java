package com.theshoes.jsp.member.model.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.theshoes.jsp.common.paging.SelectCriteria;
import com.theshoes.jsp.member.model.dto.AddressDTO;

public class AddressDAO {

	/*주소록 전체 조회용 메소드 */ 
	public List<AddressDTO> selectAllAddressList(SqlSession session) {
		return null;
	
	}
	
	
	/* 주소록 추가 메소드 */ 
	public int insertAddress(SqlSession session, AddressDTO newAddress) {
		System.out.println("나는야 DAO DAO DAO ");
		return session.insert("AddressDAO.insertAddress",newAddress);
			
	/* 주소록 수정 메소드 */ 
		
	}

}
