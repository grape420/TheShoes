package com.theshoes.jsp.cs.model.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.theshoes.jsp.common.paging.SelectCriteria;
import com.theshoes.jsp.cs.model.dto.QuestionDTO;
import com.theshoes.jsp.cs.model.dto.QuestionFileDTO;
import com.theshoes.jsp.cs.model.dto.RequestDTO;

public class QuestionDAO {

	/* 문의글 삽입 */
	public int insertQuestion(SqlSession session, QuestionDTO question) {
		System.out.println("qdao:"+question);
		return session.insert("QuestionDAO.insertQuestion", question);
	}

	/* 문의글 썸네일 삽입 */
	public int insertQuestionFile(SqlSession session, QuestionFileDTO questionThumbDTO) {
		System.out.println("dao" + questionThumbDTO);
		return session.insert("QuestionDAO.insertQuestionFile", questionThumbDTO);
	}

	/* 전체 문의글 수 조회 */
	public int selectCsTotalCount(SqlSession session) {
		return session.selectOne("QuestionDAO.selectCsTotalCount");
	}

	/* 전체 문의글 목록 조회 */
	public List<QuestionDTO> selectAllCsList(SqlSession session, SelectCriteria selectCriteria) {
		System.out.println("questionDAO : " + selectCriteria);
		return session.selectList("QuestionDAO.selectAllCsList", selectCriteria);	
	}
	
	/* 사진 있는 문의글 상세보기 */
	public QuestionDTO selectCsDetail(SqlSession session, int csNo) {
		System.out.println("~ DAO 문의글 상세보기 : " + csNo);
		QuestionDTO test = session.selectOne("QuestionDAO.selectCsDetail", csNo);
		System.out.println("test : " + test);
		return test;
	}

	/* 사진 없는 문의글 상세보기 */
	public QuestionDTO selectCsDetailNoPhoto(SqlSession session, int csNo) {
		System.out.println("사진 없는 문의글 상세보기 dao");
		return session.selectOne("QuestionDAO.selectCsDetailNoPhoto", csNo);
	}

	/* 답변글 등록하기 */
	public int registRequest(SqlSession session, RequestDTO requestDTO) {
		System.out.println("dao 답변글 등록 완료 : " + requestDTO);
		return session.insert("QuestionDAO.registRequest", requestDTO);
	}

	/* 답변글 개수 확인 */
	public int selectRequestCount(SqlSession session) {
		System.out.println("DAO 답변글 갯수 ");
		return session.selectOne("QuestionDAO.selectRequestCount");
	}

	/* 답변글 상세보기 */
	public RequestDTO selectRequestDetail(SqlSession session, int csNo) {
		System.out.println("랄랄라 dao 답변글 상세보기 : " + csNo);
		return session.selectOne("QuestionDAO.selectRequestDetail", csNo);
	}

	

}
