package com.theshoes.jsp.board.model.dto;

import java.io.Serializable;
import java.sql.Date;
import java.util.List;

public class ResellListDTO implements Serializable {

	private static final long serialVersionUID = 7105568023174840532L;
	
	private int boardNo;			// 게시글 번호
	private String boardId;			// 게시글 작성자
	private int boardCategoryNo;	// 게시글 카테고리 번호
	private String boardTitle;		// 게시글 제목
	private String boardContent;	// 게시글 내용
	private int categoryOrder;		// 카테고리별 게시글 순서
	private int rtNo;				// 섬네일 번호
	private String rtFile;			// 섬네일 사진
	private List<ResellThumbDTO> resellThumb;
	public ResellListDTO(int boardNo, String boardId, int boardCategoryNo, String boardTitle, String boardContent,
			int categoryOrder, int rtNo, String rtFile, List<ResellThumbDTO> resellThumb) {
		this.boardNo = boardNo;
		this.boardId = boardId;
		this.boardCategoryNo = boardCategoryNo;
		this.boardTitle = boardTitle;
		this.boardContent = boardContent;
		this.categoryOrder = categoryOrder;
		this.rtNo = rtNo;
		this.rtFile = rtFile;
		this.resellThumb = resellThumb;
	}
	public ResellListDTO() {
		// TODO Auto-generated constructor stub
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
	public int getRtNo() {
		return rtNo;
	}
	public void setRtNo(int rtNo) {
		this.rtNo = rtNo;
	}
	public String getRtFile() {
		return rtFile;
	}
	public void setRtFile(String rtFile) {
		this.rtFile = rtFile;
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
		return "ResellListDTO [boardNo=" + boardNo + ", boardId=" + boardId + ", boardCategoryNo=" + boardCategoryNo
				+ ", boardTitle=" + boardTitle + ", boardContent=" + boardContent + ", categoryOrder=" + categoryOrder
				+ ", rtNo=" + rtNo + ", rtFile=" + rtFile + ", resellThumb=" + resellThumb + "]";
	}
	
	
	
	
}
