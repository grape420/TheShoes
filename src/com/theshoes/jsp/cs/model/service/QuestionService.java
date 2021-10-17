package com.theshoes.jsp.cs.model.service;

import static com.theshoes.jsp.common.mybatis.Template.getSqlSession;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.theshoes.jsp.common.paging.SelectCriteria;
import com.theshoes.jsp.cs.model.dao.QuestionDAO;
import com.theshoes.jsp.cs.model.dto.OnlyQuestionDTO;
import com.theshoes.jsp.cs.model.dto.QuestionDTO;
import com.theshoes.jsp.cs.model.dto.QuestionFileDTO;
import com.theshoes.jsp.cs.model.dto.RequestDTO;

public class QuestionService {

	private final QuestionDAO questionDAO;

	public QuestionService() {
		questionDAO = new QuestionDAO();
	}

	/* 1:1 문의글 + 사진 등록 */
	public int insertQuestion(QuestionDTO question) {

		SqlSession session = getSqlSession();

		int result = 0;

		int questionResult = questionDAO.insertQuestion(session, question);
		System.out.println("questionResult : " + questionResult);

		List<QuestionFileDTO> fileList = question.getQtList();

		for (int i = 0; i < fileList.size(); i++) {
			fileList.get(i).setCtNo(question.getCsNo());
		}

		int questionThumbResult = 0;
		for (int i = 0; i < fileList.size(); i++) {
			questionThumbResult += questionDAO.insertQuestionFile(session, fileList.get(i));
		}

		if (questionResult > 0 && questionThumbResult == fileList.size()) {
			session.commit();
			result = 1;
		} else {
			session.rollback();
		}

		session.close();

		return result;
	}

	/* 페이징 처리를 위한 FAQ 게시물 수 조회 */
	public int selectCsTotalCount() {
		SqlSession session = getSqlSession();
		
		int totalCount = questionDAO.selectCsTotalCount(session);
		
		session.close();
		
		return totalCount;	
		
	}

	/* CS 게시물 전체 조회용 메소드 */
	public List<QuestionDTO> selectAllCsList(SelectCriteria selectCriteria) {
		SqlSession session = getSqlSession();
		
		List<QuestionDTO> csList = questionDAO.selectAllCsList(session, selectCriteria);
		System.out.println("asdfsadfsad - 리스트 : " + csList);
		session.close();
		
		return csList;	
		
	}

	/* CS 게시물 상세조회 */
	public QuestionDTO selectCsDetail(int csNo) {
		SqlSession session = getSqlSession();
		
		QuestionDTO csDetail= questionDAO.selectCsDetail(session, csNo);
		
		System.out.println("service csdetail: " + csDetail);
		
		/* 파일이 없어서 전체 null로 넘어오는 경우 */
		if (csDetail == null ) {
			csDetail = questionDAO.selectCsDetailNoPhoto(session, csNo);
			System.out.println("service noPhoto detail : " + csDetail);
		}
		session.close();
		
		return csDetail;
	}

	/* CS 답변 글 등록 */
	public int registRequest(RequestDTO requestDTO) {
		
		SqlSession session = getSqlSession();
		
		int result = questionDAO.registRequest(session, requestDTO);
		
		System.out.println("서비스 requestDTO : " + requestDTO);
		
		if(result > 0) {
			session.commit();
		} else {
			session.rollback();
		}
		
		session.close();
		
		return result;	
	}

	/* CS 답변 데이터 수 확인 */
	public int selectRequestCount() {
		SqlSession session = getSqlSession();
		
		int requestCount = questionDAO.selectRequestCount(session);
		
		session.close();
		
		return requestCount;
	}

	/* CS 답변 글 상세보기 */
	public RequestDTO selectRequestDetail(int csNo) {
		SqlSession session = getSqlSession();
		
		RequestDTO csRequest = questionDAO.selectRequestDetail(session, csNo);
		
		System.out.println("request service : " + csRequest);
		session.close();
		
		return csRequest;
	}
}
