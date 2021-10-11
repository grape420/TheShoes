package com.theshoes.jsp.member.model.serivce;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.theshoes.jsp.member.model.dao.AddressDAO;
import com.theshoes.jsp.member.model.dto.AddressDTO;

import static com.theshoes.jsp.common.mybatis.Template.getSqlSession;

public class AddressService {
	
	private final AddressDAO addressDAO;
	
	public AddressService() {
		addressDAO = new AddressDAO();
		System.out.println("addressService");
	}
		
		/* 주소록 전체 조회용 메소드 */
		public List<AddressDTO> selectAddressList() {
			
			SqlSession session = getSqlSession();
			
			List<AddressDTO> addressList = addressDAO.selectAllAddressList(session);
			
			session.close();
			
			return addressList;
		}
		

		/* 주소록 추가 메소드 */
		public int insertAddress(AddressDTO newAddress) {
			
			SqlSession session = getSqlSession();
			
			int result = addressDAO.insertAddress(session, newAddress);
			
			if(result > 0) {
				session.commit();
			} else {
				session.rollback();
			}
			
			session.close();
			
			return result;
		}
}
