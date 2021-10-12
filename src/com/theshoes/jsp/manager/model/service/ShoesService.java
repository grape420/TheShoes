package com.theshoes.jsp.manager.model.service;

import static com.theshoes.jsp.common.mybatis.Template.getSqlSession;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.theshoes.jsp.board.model.dto.BoardDTO;
import com.theshoes.jsp.common.paging.SelectCriteria;
import com.theshoes.jsp.manager.model.dao.ManagerMapper;
import com.theshoes.jsp.shoes.model.dto.ShoesDTO;
import com.theshoes.jsp.shoes.model.dto.ShoesThumbDTO;

public class ShoesService {
	
	private final ManagerMapper mapper;
	
	public ShoesService() {
		mapper = new ManagerMapper();
	}

	public int insertShoes(ShoesDTO shoes) {
		
		/* Connection 생성 */
		SqlSession session = getSqlSession();
		
		/* 최종적으로 반환할 result 선언 */
		int result = 0;
		
		/* 먼저 board 테이블부터 thumbnail 내용부터 insert 한다. */
		int shoesResult = mapper.insertShoes(session, shoes);
		
		System.out.println("shoesResult : " + shoesResult);
		
		List<ShoesThumbDTO> fileList = shoes.getThumbList();
		
		for (int i = 0; i < fileList.size(); i++) {
			fileList.get(i).setStNo(shoes.getShoesNo());
		}
		
		int shoesThumbResult = 0;
		for (int i = 0; i < fileList.size(); i++) {
			shoesThumbResult += mapper.insertShoesThumb(session, fileList.get(i));
		}
		
		if (shoesResult > 0 && shoesThumbResult == fileList.size()) {
			session.commit();
			result = 1;
		} else {
			session.rollback();
		}
		
		session.close();
		
		return result;
	}

	public List<ShoesDTO> selectShoesList() {				// 좀이따 주석
		SqlSession session = getSqlSession();
		
		List<ShoesDTO> shoesList = mapper.selectShoesList(session);
		
		session.close();
		
		return shoesList;
	}

	public ShoesDTO selectShoesDetail(int shoesNo) {				
		SqlSession session = getSqlSession();
		ShoesDTO shoesDetail = null;
		
		shoesDetail = mapper.selectShoesDetail(session, shoesNo);
		
		if (shoesDetail != null) {
			session.commit();
		} else {
			session.rollback();
		}
		
		session.close();
		
		return shoesDetail;
	}

	public int updateShoes(ShoesDTO shoes) {
		/* Connection 생성 */
		SqlSession session = getSqlSession();
		
		/* 최종적으로 반환할 result 선언 */
		int result = 0;
		
		int shoesResult = mapper.updateShoes(session, shoes);
		
		System.out.println("shoesResult : " + shoesResult);
		
		List<ShoesThumbDTO> fileList = shoes.getThumbList();
		
		for (int i = 0; i < fileList.size(); i++) {
			fileList.get(i).setStNo(shoes.getShoesNo());
		}
		
		int shoesThumbResult = 0;
		for (int i = 0; i < fileList.size(); i++) {
			shoesThumbResult += mapper.updateShoesThumb(session, fileList.get(i));
		}
		
		if (shoesResult > 0 && shoesThumbResult == fileList.size()) {
			session.commit();
			result = 1;
		} else {
			session.rollback();
		}
		
		session.close();
		
		return result;
	}

	public List<ShoesDTO> selectAllShoesList(SelectCriteria selectCriteria) {
		SqlSession session = getSqlSession();
		
		List<ShoesDTO> shoesList = mapper.selectAllNoticeList(session, selectCriteria);
		System.out.println("shoesList : " + shoesList);
		session.close();
		
		return shoesList;
	}

	public int selectShoesTotalCount() {
		SqlSession session = getSqlSession();
		
		int totalCount = mapper.selectShoesTotalCount(session);
		
		session.close();
		
		return totalCount;
	}
		
		
		

}
