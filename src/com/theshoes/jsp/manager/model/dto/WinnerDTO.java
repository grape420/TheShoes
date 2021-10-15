package com.theshoes.jsp.manager.model.dto;

import java.io.Serializable;
import java.util.Date;

public class WinnerDTO implements Serializable{

	private static final long serialVersionUID = 5889529200394124301L;
	
	private String winnerId;
	private int winnerNo;
	private String winnerYn;
	private java.util.Date winnerDeadLine;
	
	public WinnerDTO() {
	}
	public WinnerDTO(String winnerId, int winnerNo, String winnerYn, Date winnerDeadLine) {
		this.winnerId = winnerId;
		this.winnerNo = winnerNo;
		this.winnerYn = winnerYn;
		this.winnerDeadLine = winnerDeadLine;
	}
	public String getWinnerId() {
		return winnerId;
	}
	public void setWinnerId(String winnerId) {
		this.winnerId = winnerId;
	}
	public int getWinnerNo() {
		return winnerNo;
	}
	public void setWinnerNo(int winnerNo) {
		this.winnerNo = winnerNo;
	}
	public String getWinnerYn() {
		return winnerYn;
	}
	public void setWinnerYn(String winnerYn) {
		this.winnerYn = winnerYn;
	}
	public java.util.Date getWinnerDeadLine() {
		return winnerDeadLine;
	}
	public void setWinnerDeadLine(java.util.Date winnerDeadLine) {
		this.winnerDeadLine = winnerDeadLine;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	@Override
	public String toString() {
		return "WinnerDTO [winnerId=" + winnerId + ", winnerNo=" + winnerNo + ", winnerYn=" + winnerYn
				+ ", winnerDeadLine=" + winnerDeadLine + "]";
	}
	
	

}
