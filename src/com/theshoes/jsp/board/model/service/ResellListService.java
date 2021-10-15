package com.theshoes.jsp.board.model.service;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import static com.theshoes.jsp.common.mybatis.Template.getSqlSession;

import com.theshoes.jsp.board.model.dto.BoardDTO;
import com.theshoes.jsp.board.model.dto.ResellDTO;
import com.theshoes.jsp.board.model.dto.ResellDetailDTO;
import com.theshoes.jsp.board.model.dto.ResellListDTO;
import com.theshoes.jsp.board.model.dto.ResellThumbDTO;
import com.theshoes.jsp.board.model.dao.ResellListDAO;
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


	public List<BoardDTO> selectResellList() {
		
		SqlSession session = getSqlSession();
		
		List<BoardDTO> resellList = resellListDAO.selectResellList(session);
		System.out.println("resellList" + resellList);
	
		session.close();
		
		return resellList;
	}
	
	/* 리셀 디테일 */
	public ResellListDTO selectOneResellList(int no) {
		
		SqlSession session = getSqlSession();
		
		ResellListDTO resell = null;
		
		int result = ResellListDAO.incrementBoardCount(session, no);
		
		if(result > 0) {
			resell = resellListDAO.selectOneResellList(session, no);
			
			if(resell != null) {
				session.commit();
			} else {
				session.rollback();
			}
		} else {
			session.rollback();
		}
		
		session.close();
		
		return resell;
	}
	

	public int insertResellShoes(ResellDTO resellShoes) {
		
		SqlSession session = getSqlSession();
		System.out.println("test");
		int result = 0;
		
		int resellResult = ResellListDAO.insertResellShoes(session, resellShoes);
		
		List<ResellThumbDTO> fileList = resellShoes.getResellThumb();
		
		for(int i = 0; i < fileList.size(); i++) {
			fileList.get(i).setRtNo(resellShoes.getResellNo());
			System.out.println("test");
		}
		
		int resellShoesThumbResult = 0;
		for(int i = 0; i < fileList.size(); i++) {
			resellShoesThumbResult += ResellListDAO.insertResellThumb(session, fileList.get(i));
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




}
