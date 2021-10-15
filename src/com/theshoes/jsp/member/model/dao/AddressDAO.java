package com.theshoes.jsp.member.model.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.theshoes.jsp.board.model.dto.BoardDTO;
import com.theshoes.jsp.common.paging.SelectCriteria;
import com.theshoes.jsp.member.model.dto.AddressDTO;

public class AddressDAO {

	
	/* 주소록 추가  */ 
	public int insertAddress(SqlSession session, AddressDTO newAddress) {
		return session.insert("AddressDAO.insertAddress",newAddress);
			
	}

	/* 주소록 목록 전체 조회  */
	public static List<AddressDTO> selectAllAddressList(SqlSession session, String id) {
		return session.selectList("AddressDAO.selectAllAddressList", id);
	}

	/* 주소록 수정  */ 
	public int updateAddress(SqlSession session, AddressDTO address) {
		System.out.println("나는 addressDAO");
		return session.update("AddressDAO.updateAddress", address);

	
	}
	/* 주소록 삭제 */
	public int deleteAddress(SqlSession session, String addressNo) {
		return session.delete("AddressDAO.deleteAddress", addressNo);
	}


}
