package com.theshoes.jsp.board.model.dto;

import java.io.Serializable;
import java.util.List;

public class ResellDetailDTO implements Serializable{

	private static final long serialVersionUID = 7065767745667014567L;
	
	private int resellNo;
	private int boardNo;
	private String boardId;
	private int boardCategoryNo;
	private String boardTitle;
	private String boardContent;
	private int categoryOrder;
	private List<ResellThumbDTO> resellThumb;
	
	
	


	public ResellDetailDTO(int resellNo, int boardNo, String boardId, int boardCategoryNo, String boardTitle,
			String boardContent, int categoryOrder, List<ResellThumbDTO> resellThumb) {
		this.resellNo = resellNo;
		this.boardNo = boardNo;
		this.boardId = boardId;
		this.boardCategoryNo = boardCategoryNo;
		this.boardTitle = boardTitle;
		this.boardContent = boardContent;
		this.categoryOrder = categoryOrder;
		this.resellThumb = resellThumb;
	}


	public ResellDetailDTO() {
	}


	


	public int getResellNo() {
		return resellNo;
	}


	public void setResellNo(int resellNo) {
		this.resellNo = resellNo;
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


	public int getCategoryOrder() {
		return categoryOrder;
	}


	public void setCategoryOrder(int categoryOrder) {
		this.categoryOrder = categoryOrder;
	}


	public List<ResellThumbDTO> getResellThumb() {
		return resellThumb;
	}


	public void setResellThumb(List<ResellThumbDTO> resellThumb) {
		this.resellThumb = resellThumb;
	}


	public static long getSerialversionuid() {
		return serialVersionUID;
	}


	@Override
	public String toString() {
		return "ResellDetailDTO [resellNo=" + resellNo + ", boardNo=" + boardNo + ", boardId=" + boardId
				+ ", boardCategoryNo=" + boardCategoryNo + ", boardTitle=" + boardTitle + ", boardContent="
				+ boardContent + ", categoryOrder=" + categoryOrder + ", resellThumb=" + resellThumb + "]";
	}


	

	
}
