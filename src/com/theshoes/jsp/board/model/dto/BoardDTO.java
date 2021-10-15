package com.theshoes.jsp.board.model.dto;

import java.io.Serializable;
import java.sql.Date;

public class BoardDTO implements Serializable{

	private int boardNo;				// 게시글번호
	private String boardId;				// 아이디
	private int boardCategoryNo;		// 게시글 카테고리 번호	
	private String boardTitle;			// 제목
	private String boardContent;		// 내용
	private Date boardRegDate;			// 작성일자
	private int boardHit;				// 조회수
	private int categoryOrder;			// 카테고리별 게시글 순서
	
	
	public BoardDTO() {
	}

	public BoardDTO(int boardNo, String boardId, int boardCategoryNo, String boardTitle, String boardContent,
			Date boardRegDate, int boardHit, int categoryOrder) {
		this.boardNo = boardNo;
		this.boardId = boardId;
		this.boardCategoryNo = boardCategoryNo;
		this.boardTitle = boardTitle;
		this.boardContent = boardContent;
		this.boardRegDate = boardRegDate;
		this.boardHit = boardHit;
		this.categoryOrder = categoryOrder;
	}

	public int getBoardNo() {
		return boardNo;
	}

	public void setBoardNo(int boardNo) {
		this.boardNo = boardNo;
	}

	public String getBoardId() {
		return boardId;
	}

	public void setBoardId(String boardId) {
		this.boardId = boardId;
	}

	public int getBoardCategoryNo() {
		return boardCategoryNo;
	}

	public void setBoardCategoryNo(int boardCategoryNo) {
		this.boardCategoryNo = boardCategoryNo;
	}

	public String getBoardTitle() {
		return boardTitle;
	}

	public void setBoardTitle(String boardTitle) {
		this.boardTitle = boardTitle;
	}

	public String getBoardContent() {
		return boardContent;
	}

	public void setBoardContent(String boardContent) {
		this.boardContent = boardContent;
	}

	public Date getBoardRegDate() {
		return boardRegDate;
	}

	public void setBoardRegDate(Date boardRegDate) {
		this.boardRegDate = boardRegDate;
	}

	public int getBoardHit() {
		return boardHit;
	}

	public void setBoardHit(int boardHit) {
		this.boardHit = boardHit;
	}

	public int getCategoryOrder() {
		return categoryOrder;
	}

	public void setCategoryOrder(int categoryOrder) {
		this.categoryOrder = categoryOrder;
	}

	@Override
	public String toString() {
		return "BoardDTO [boardNo=" + boardNo + ", boardId=" + boardId + ", boardCategoryNo=" + boardCategoryNo
				+ ", boardTitle=" + boardTitle + ", boardContent=" + boardContent + ", boardRegDate=" + boardRegDate
				+ ", boardHit=" + boardHit + ", categoryOrder=" + categoryOrder + "]";
	}
	
	
	
}
