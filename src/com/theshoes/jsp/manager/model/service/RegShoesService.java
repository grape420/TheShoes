package com.theshoes.jsp.manager.model.service;

import static com.theshoes.jsp.common.mybatis.Template.getSqlSession;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.theshoes.jsp.manager.model.dao.ManagerMapper;
import com.theshoes.jsp.shoes.model.dto.ShoesDTO;
import com.theshoes.jsp.shoes.model.dto.ShoesThumbDTO;

public class RegShoesService {
	
	private final ManagerMapper mapper;
	
	public RegShoesService() {
		mapper = new ManagerMapper();
	}

	public int insertShoes(ShoesDTO shoes) {
//		SqlSession sqlSession = getSqlSession();
//		
//		int result = mapper.insertShoes(sqlSession, shoes);
//		
//		if (result > 0) {
//			System.out.println("신발 등록 성공!");
//			sqlSession.commit();
//		} else {
//			System.out.println("신발 등록 실패!");
//			sqlSession.rollback();
//		}
//		
//		sqlSession.close();
//		
//		return result;
		
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
		
		
		

}
