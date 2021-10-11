package com.theshoes.jsp.board.model.dto;

import java.io.Serializable;

public class BoardCategoryDTO implements Serializable{

	private static final long serialVersionUID = -6883390853861864523L;
	
	private int categoryNo;		    // 게시글 카테고리 번호
	private String categoryName; 	// 카테고리명
	
	public BoardCategoryDTO() {
	}
	
	public BoardCategoryDTO(int categoryNo, String categoryName) {
		this.categoryNo = categoryNo;
		this.categoryName = categoryName;
	}
	
	public int getCategoryNo() {
		return categoryNo;
	}
	public void setCategoryNo(int categoryNo) {
		this.categoryNo = categoryNo;
	}
	public String getCategoryName() {
		return categoryName;
	}
	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}


	@Override
	public String toString() {
		return "BoardCategoryDTO [categoryNo=" + categoryNo + ", categoryName=" + categoryName + "]";
	}
	
	
}
