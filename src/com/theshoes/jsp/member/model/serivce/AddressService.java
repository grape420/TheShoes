package com.theshoes.jsp.member.model.serivce;

import static com.theshoes.jsp.common.mybatis.Template.getSqlSession;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.theshoes.jsp.common.paging.SelectCriteria;
import com.theshoes.jsp.member.model.dao.AddressDAO;
import com.theshoes.jsp.member.model.dto.AddressDTO;

public class AddressService {
	
	private final AddressDAO addressDAO;
	
	public AddressService() {
		addressDAO = new AddressDAO();
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
		

		/* 주소록 전체 조회용 메소드 */
		public List<AddressDTO> selectAllAddressList(String id) {
			SqlSession session = getSqlSession();
			List<AddressDTO> addressList = AddressDAO.selectAllAddressList(session, id);
			
			session.close();
			
			return addressList;
		}
		
		/* 주소록 수정 메소드 */ 
		public int updateAddress(AddressDTO address) {
			SqlSession session = getSqlSession();
			
			
			int result = addressDAO.updateAddress(session, address);
			System.out.println("나는야 서비스 ");
			
			if(result > 0) {
				session.commit();
			} else {
				session.rollback();
			}
			session.close();
			
			return result;
		}


}
