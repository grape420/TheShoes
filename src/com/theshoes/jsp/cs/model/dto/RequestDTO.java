package com.theshoes.jsp.cs.model.dto;

import java.sql.Date;

public class RequestDTO {
	private int csRequestNo;					// 문의글 번호
	private String managerId;					// 문의글 아이디
	private String requestContent;				// 문의글 내용 
	private Date requestRegDate;				// 문의글 등록일
	
	public RequestDTO() {
	}
	public RequestDTO(int csRequestNo, String managerId, String requestContent, Date requestRegDate) {
		this.csRequestNo = csRequestNo;
		this.managerId = managerId;
		this.requestContent = requestContent;
		this.requestRegDate = requestRegDate;
	}
	public int getCsRequestNo() {
		return csRequestNo;
	}
	public void setCsRequestNo(int csRequestNo) {
		this.csRequestNo = csRequestNo;
	}
	public String getManagerId() {
		return managerId;
	}
	public void setManagerId(String managerId) {
		this.managerId = managerId;
	}
	public String getRequestContent() {
		return requestContent;
	}
	public void setRequestContent(String requestContent) {
		this.requestContent = requestContent;
	}
	public Date getRequestRegDate() {
		return requestRegDate;
	}
	public void setRequestRegDate(Date requestRegDate) {
		this.requestRegDate = requestRegDate;
	}
	@Override
	public String toString() {
		return "RequestDTO [csRequestNo=" + csRequestNo + ", managerId=" + managerId + ", requestContent="
				+ requestContent + ", requestRegDate=" + requestRegDate + "]";
	}

	
}
