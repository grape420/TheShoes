package com.theshoes.jsp.board.model.service;

import static com.theshoes.jsp.common.mybatis.Template.getSqlSession;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.theshoes.jsp.board.model.dao.ResellListDAO;
import com.theshoes.jsp.board.model.dto.BoardDTO;
import com.theshoes.jsp.board.model.dto.ResellDetailDTO;
import com.theshoes.jsp.board.model.dto.ResellListDTO;
import com.theshoes.jsp.board.model.dto.ResellThumbDTO;
import com.theshoes.jsp.common.paging.SelectCriteria;

public class ResellListService {

	private final ResellListDAO resellListDAO;
	
	public ResellListService() {
		resellListDAO = new ResellListDAO();
	}
	
//	/* 게시물 조회 */
//	public List<ResellListDTO> selectResellList(SelectCriteria selectCriteria) {
//		
//		SqlSession session = getSqlSession();
//		
//		List<ResellListDTO> resellList = resellListDAO.selectResellList(session, selectCriteria);
//		return null;
//	}


	public List<ResellDetailDTO> selectResellList(SelectCriteria selectCriteria) {
		
		SqlSession session = getSqlSession();
		
		List<ResellDetailDTO> resellList = resellListDAO.selectResellList(session, selectCriteria);
		System.out.println("resellList" + resellList);
	
		session.close();
		
		return resellList;
	}
	
	/* 리셀 디테일 */
	public ResellDetailDTO selectOneResellList(int no) {
		
		SqlSession session = getSqlSession();
		
		ResellDetailDTO resell = resellListDAO.selectOneResellList(session, no);
		
		session.close();
		
		return resell;
	}
	

	public int insertResellShoes(ResellListDTO resell) {
		
		SqlSession session = getSqlSession();
		System.out.println("test");
		int result = 0;
		
		int resellResult = resellListDAO.insertResellShoes(session, resell);
		
		System.out.println("board Insert Test");
		
		List<ResellThumbDTO> fileList = resell.getResellThumb();

		int resellShoesThumbResult = 0;
		
		for(int i = 0; i < fileList.size(); i++) {
			fileList.get(i).setResellThumbNo(i + 1);
			resellShoesThumbResult += resellListDAO.insertResellThumb(session, fileList.get(i));
		}
		
		if(resellResult > 0 && resellShoesThumbResult == fileList.size()) {
			session.commit();
			result = 1;
		} else {
			session.rollback();
		}
		
		session.close();
		
		return result;
	}

	public int selectResellTotalCount() {
		
		SqlSession session = getSqlSession();
		
		int totalCount = resellListDAO.selectResellTotalCount(session);
		
		session.close();
		
		return totalCount;
	}

}
