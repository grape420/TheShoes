package com.theshoes.jsp.cs.model.dto;

import java.sql.Date;

public class OnlyQuestionDTO {
	private int csNo;									// 문의글 번호
	private String csId;								// 문의글 아이디
	private String csTitle;								// 문의글 제목
	private String csContent;							// 문의글 내용 
	private Date csRegDate;								// 문의글 등록일
	public OnlyQuestionDTO() {
		
	}
	public OnlyQuestionDTO(int csNo, String csId, String csTitle, String csContent, Date csRegDate) {
		this.csNo = csNo;
		this.csId = csId;
		this.csTitle = csTitle;
		this.csContent = csContent;
		this.csRegDate = csRegDate;
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
	@Override
	public String toString() {
		return "OnlyQuestionDTO [csNo=" + csNo + ", csId=" + csId + ", csTitle=" + csTitle + ", csContent=" + csContent
				+ ", csRegDate=" + csRegDate + "]";
	}

	
}
