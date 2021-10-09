package com.theshoes.jsp.board.model.dto;

import java.io.Serializable;
import java.util.List;

public class BoardCategoryAndBoardDTO implements Serializable{

	private static final long serialVersionUID = -6209730284667187580L;
	
	private int categoryNo;		  			    // 게시글 카테고리 번호
	private String categoryName; 	     	    // 카테고리명
	private List<BoardCategoryDTO> postList;	// 카테고리:게시글 = 1:n (collection)
	
	public BoardCategoryAndBoardDTO() {
	}

	public BoardCategoryAndBoardDTO(int categoryNo, String categoryName, List<BoardCategoryDTO> postList) {
		this.categoryNo = categoryNo;
		this.categoryName = categoryName;
		this.postList = postList;
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

	public List<BoardCategoryDTO> getPostList() {
		return postList;
	}

	public void setPostList(List<BoardCategoryDTO> postList) {
		this.postList = postList;
	}

	@Override
	public String toString() {
		return "BoardCategoryAndBoardDTO [categoryNo=" + categoryNo + ", categoryName=" + categoryName + ", postList="
				+ postList + "]";
	}
	
	
}
