package com.theshoes.jsp.common.paging;

public class SelectCriteriaContainId implements java.io.Serializable {
	
	private SelectCriteria selectCriteria;		// 페이징 처리를 위한 selectCriteria
	private String memberId;					// 현재 접속한 회원의 id
	
	public SelectCriteriaContainId() {}

	public SelectCriteriaContainId(SelectCriteria selectCriteria, String memberId) {
		this.selectCriteria = selectCriteria;
		this.memberId = memberId;
	}

	public SelectCriteria getSelectCriteria() {
		return selectCriteria;
	}

	public void setSelectCriteria(SelectCriteria selectCriteria) {
		this.selectCriteria = selectCriteria;
	}

	public String getMemberId() {
		return memberId;
	}

	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}

	@Override
	public String toString() {
		return "SelectCriteriaContainId [selectCriteria=" + selectCriteria + ", memberId=" + memberId + "]";
	}
	
}
