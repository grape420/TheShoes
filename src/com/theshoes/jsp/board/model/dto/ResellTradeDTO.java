package com.theshoes.jsp.board.model.dto;

import java.io.Serializable;
import java.sql.Date;

public class ResellTradeDTO implements Serializable{

	private static final long serialVersionUID = -8893089306733922317L;
	
	private int rtNo;
	private String rtBuyer;
	private String rtContent;
	private Date rtRegDate;
	
	public ResellTradeDTO(int rtNo, String rtBuyer, String rtContent, Date rtRegDate) {
		this.rtNo = rtNo;
		this.rtBuyer = rtBuyer;
		this.rtContent = rtContent;
		this.rtRegDate = rtRegDate;
	}

	public int getRtNo() {
		return rtNo;
	}

	public void setRtNo(int rtNo) {
		this.rtNo = rtNo;
	}

	public String getRtBuyer() {
		return rtBuyer;
	}

	public void setRtBuyer(String rtBuyer) {
		this.rtBuyer = rtBuyer;
	}

	public String getRtContent() {
		return rtContent;
	}

	public void setRtContent(String rtContent) {
		this.rtContent = rtContent;
	}

	public Date getRtRegDate() {
		return rtRegDate;
	}

	public void setRtRegDate(Date rtRegDate) {
		this.rtRegDate = rtRegDate;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public String toString() {
		return "ResellTradeDTO [rtNo=" + rtNo + ", rtBuyer=" + rtBuyer + ", rtContent=" + rtContent + ", rtRegDate="
				+ rtRegDate + "]";
	}
	
	
}
