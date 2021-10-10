package com.theshoes.jsp.board.model.dto;

import java.io.Serializable;
import java.sql.Date;

public class CommentsAndBoardDTO implements Serializable{

	private static final long serialVersionUID = -6159423746780573917L;
	private int commentsNo;				// 댓글 번호
	private int boardNo; 				// 댓글:게시글 = 1:1 (association)
	private String commentsContent;		// 댓글 내용
	private String commentsYn;			// 댓글 공개 여부
	private Date commentsRegDate;		// 댓글 등록일자
	
	public CommentsAndBoardDTO() {
	}
	public CommentsAndBoardDTO(int commentsNo, int boardNo, String commentsContent, String commentsYn,
			Date commentsRegDate) {
		this.commentsNo = commentsNo;
		this.boardNo = boardNo;
		this.commentsContent = commentsContent;
		this.commentsYn = commentsYn;
		this.commentsRegDate = commentsRegDate;
	}
	
	public int getCommentsNo() {
		return commentsNo;
	}
	public void setCommentsNo(int commentsNo) {
		this.commentsNo = commentsNo;
	}
	public int getBoardNo() {
		return boardNo;
	}
	public void setBoardNo(int boardNo) {
		this.boardNo = boardNo;
	}
	public String getCommentsContent() {
		return commentsContent;
	}
	public void setCommentsContent(String commentsContent) {
		this.commentsContent = commentsContent;
	}
	public String getCommentsYn() {
		return commentsYn;
	}
	public void setCommentsYn(String commentsYn) {
		this.commentsYn = commentsYn;
	}
	public Date getCommentsRegDate() {
		return commentsRegDate;
	}
	public void setCommentsRegDate(Date commentsRegDate) {
		this.commentsRegDate = commentsRegDate;
	}
	
	@Override
	public String toString() {
		return "CommentsAndBoardDTO [commentsNo=" + commentsNo + ", boardNo=" + boardNo + ", commentsContent="
				+ commentsContent + ", commentsYn=" + commentsYn + ", commentsRegDate=" + commentsRegDate + "]";
	}
	
	
}
