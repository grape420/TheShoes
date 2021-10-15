package com.theshoes.jsp.cs.model.dto;

import java.sql.Date;
import java.util.List;

public class QuestionDTO {
	private int csNo;									// 문의글 번호
	private String csId;								// 문의글 아이디
	private String csTitle;								// 문의글 제목
	private String csContent;							// 문의글 내용 
	private Date csRegDate;								// 문의글 등록일
	private List<QuestionFileDTO> qtList;				// 문의글 첨부사진

	public QuestionDTO() {
	}
	public QuestionDTO(int csNo, String csId, String csTitle, String csContent, Date csRegDate,
			List<QuestionFileDTO> qtList) {
		this.csNo = csNo;
		this.csId = csId;
		this.csTitle = csTitle;
		this.csContent = csContent;
		this.csRegDate = csRegDate;
		this.qtList = qtList;
	}
	public int getCsNo() {
		return csNo;
	}
	public void setCsNo(int csNo) {
		this.csNo = csNo;
	}
	public String getCsId() {
		return csId;
	}
	public void setCsId(String csId) {
		this.csId = csId;
	}
	public String getCsTitle() {
		return csTitle;
	}
	public void setCsTitle(String csTitle) {
		this.csTitle = csTitle;
	}
	public String getCsContent() {
		return csContent;
	}
	public void setCsContent(String csContent) {
		this.csContent = csContent;
	}
	public Date getCsRegDate() {
		return csRegDate;
	}
	public void setCsRegDate(Date csRegDate) {
		this.csRegDate = csRegDate;
	}
	public List<QuestionFileDTO> getQtList() {
		return qtList;
	}
	public void setQtList(List<QuestionFileDTO> qtList) {
		this.qtList = qtList;
	}
	@Override
	public String toString() {
		return "QuestionDTO [csNo=" + csNo + ", csId=" + csId + ", csTitle=" + csTitle + ", csContent=" + csContent
				+ ", csRegDate=" + csRegDate + ", qtList=" + qtList + "]";
	}

	
	
}