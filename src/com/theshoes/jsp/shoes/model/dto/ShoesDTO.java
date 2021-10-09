package com.theshoes.jsp.shoes.model.dto;

import java.io.Serializable;
import java.sql.Date;

public class ShoesDTO implements Serializable{

	private static final long serialVersionUID = 8347527059432599314L;
	
	private int shoesNo;						// 신발 번호
	private int infoCategoryNo;					// 신발 카테고리 번호
	private String shoesModel;					// 모델명
	private int shoesPrice;						// 발매가
	private String salesYn;						// 판매 여부
	private int salesAmount;					// 판매 수량
	private int reamaningAmount;				// 잔여 수량
	private java.sql.Date startDate;			// 응모 시작일
	private java.sql.Date endDate;				// 응모 종료일
	private java.sql.Date winnerDate;			// 당첨자 발표일
	private String eventEndYn;					// 추첨 종료 상태
	
	public ShoesDTO() {
	}
	
	public ShoesDTO(int shoesNo, int infoCategoryNo, String shoesModel, int shoesPrice, String salesYn, int salesAmount,
			int reamaningAmount, Date startDate, Date endDate, Date winnerDate, String eventEndYn) {
		this.shoesNo = shoesNo;
		this.infoCategoryNo = infoCategoryNo;
		this.shoesModel = shoesModel;
		this.shoesPrice = shoesPrice;
		this.salesYn = salesYn;
		this.salesAmount = salesAmount;
		this.reamaningAmount = reamaningAmount;
		this.startDate = startDate;
		this.endDate = endDate;
		this.winnerDate = winnerDate;
		this.eventEndYn = eventEndYn;
	}
	
	public int getShoesNo() {
		return shoesNo;
	}
	public void setShoesNo(int shoesNo) {
		this.shoesNo = shoesNo;
	}
	public int getInfoCategoryNo() {
		return infoCategoryNo;
	}
	public void setInfoCategoryNo(int infoCategoryNo) {
		this.infoCategoryNo = infoCategoryNo;
	}
	public String getShoesModel() {
		return shoesModel;
	}
	public void setShoesModel(String shoesModel) {
		this.shoesModel = shoesModel;
	}
	public int getShoesPrice() {
		return shoesPrice;
	}
	public void setShoesPrice(int shoesPrice) {
		this.shoesPrice = shoesPrice;
	}
	public String getSalesYn() {
		return salesYn;
	}
	public void setSalesYn(String salesYn) {
		this.salesYn = salesYn;
	}
	public int getSalesAmount() {
		return salesAmount;
	}
	public void setSalesAmount(int salesAmount) {
		this.salesAmount = salesAmount;
	}
	public int getReamaningAmount() {
		return reamaningAmount;
	}
	public void setReamaningAmount(int reamaningAmount) {
		this.reamaningAmount = reamaningAmount;
	}
	public java.sql.Date getStartDate() {
		return startDate;
	}
	public void setStartDate(java.sql.Date startDate) {
		this.startDate = startDate;
	}
	public java.sql.Date getEndDate() {
		return endDate;
	}
	public void setEndDate(java.sql.Date endDate) {
		this.endDate = endDate;
	}
	public java.sql.Date getWinnerDate() {
		return winnerDate;
	}
	public void setWinnerDate(java.sql.Date winnerDate) {
		this.winnerDate = winnerDate;
	}
	public String getEventEndYn() {
		return eventEndYn;
	}
	public void setEventEndYn(String eventEndYn) {
		this.eventEndYn = eventEndYn;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
	@Override
	public String toString() {
		return "ShoesDTO [shoesNo=" + shoesNo + ", infoCategoryNo=" + infoCategoryNo + ", shoesModel=" + shoesModel
				+ ", shoesPrice=" + shoesPrice + ", salesYn=" + salesYn + ", salesAmount=" + salesAmount
				+ ", reamaningAmount=" + reamaningAmount + ", startDate=" + startDate + ", endDate=" + endDate
				+ ", winnerDate=" + winnerDate + ", eventEndYn=" + eventEndYn + "]";
	}

}
