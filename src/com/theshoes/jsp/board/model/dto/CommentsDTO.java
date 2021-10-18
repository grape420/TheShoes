package com.theshoes.jsp.board.model.dto;

import java.io.Serializable;
import java.util.Date;

public class CommentsDTO implements Serializable{

	private static final long serialVersionUID = 2219851118157342636L;
	
	private int commentsNo;				// 댓글 번호
	private String commentsId;			// 작성자 아이디
	private int boardNo; 				// 게시글 번호
	private String commentsContent;		// 댓글 내용
	private String commentsYn;			// 댓글 공개 여부
	private Date commentsRegDate;		// 댓글 등록일자
	
	public CommentsDTO() {
	}

	public CommentsDTO(int commentsNo, String commentsId, int boardNo, String commentsContent, String commentsYn,
			Date commentsRegDate) {
		this.commentsNo = commentsNo;
		this.commentsId = commentsId;
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

	public String getCommentsId() {
		return commentsId;
	}

	public void setCommentsId(String commentsId) {
		this.commentsId = commentsId;
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

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public String toString() {
		return "CommentsDTO [commentsNo=" + commentsNo + ", commentsId=" + commentsId + ", boardNo=" + boardNo
				+ ", commentsContent=" + commentsContent + ", commentsYn=" + commentsYn + ", commentsRegDate="
				+ commentsRegDate + "]";
	}
	
}
