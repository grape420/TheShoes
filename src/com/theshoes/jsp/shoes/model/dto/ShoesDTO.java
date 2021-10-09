package com.theshoes.jsp.shoes.model.dto;

import java.io.Serializable;
import java.sql.Date;
import java.util.List;

public class ShoesDTO implements Serializable{

	private static final long serialVersionUID = 8347527059432599314L;
	
	private int shoesNo;						// 신발 번호
	private int infoCategoryNo;					// 신발 카테고리 번호
	private String shoesModel;					// 모델명
	private int shoesPrice;						// 발매가
	private String salesYn;						// 판매 여부
	private int salesAmount;					// 판매 수량
	private int reamaningAmount;				// 잔여 수량
	private java.util.Date startDate;			// 응모 시작일
	private java.util.Date endDate;				// 응모 종료일
	private java.util.Date winnerDate;			// 당첨자 발표일
	private String eventEndYn;					// 추첨 종료 상태
	private List<ShoesThumbDTO> thumbList;		// 신발 섬네일 리스트
	public ShoesDTO() {
	}
	public ShoesDTO(int shoesNo, int infoCategoryNo, String shoesModel, int shoesPrice, String salesYn, int salesAmount,
			int reamaningAmount, java.util.Date startDate, java.util.Date endDate, java.util.Date winnerDate,
			String eventEndYn, List<ShoesThumbDTO> thumbList) {
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
		this.thumbList = thumbList;
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
	public java.util.Date getStartDate() {
		return startDate;
	}
	public void setStartDate(java.util.Date startDate) {
		this.startDate = startDate;
	}
	public java.util.Date getEndDate() {
		return endDate;
	}
	public void setEndDate(java.util.Date endDate) {
		this.endDate = endDate;
	}
	public java.util.Date getWinnerDate() {
		return winnerDate;
	}
	public void setWinnerDate(java.util.Date winnerDate) {
		this.winnerDate = winnerDate;
	}
	public String getEventEndYn() {
		return eventEndYn;
	}
	public void setEventEndYn(String eventEndYn) {
		this.eventEndYn = eventEndYn;
	}
	public List<ShoesThumbDTO> getThumbList() {
		return thumbList;
	}
	public void setThumbList(List<ShoesThumbDTO> thumbList) {
		this.thumbList = thumbList;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	@Override
	public String toString() {
		return "ShoesDTO [shoesNo=" + shoesNo + ", infoCategoryNo=" + infoCategoryNo + ", shoesModel=" + shoesModel
				+ ", shoesPrice=" + shoesPrice + ", salesYn=" + salesYn + ", salesAmount=" + salesAmount
				+ ", reamaningAmount=" + reamaningAmount + ", startDate=" + startDate + ", endDate=" + endDate
				+ ", winnerDate=" + winnerDate + ", eventEndYn=" + eventEndYn + ", thumbList=" + thumbList + "]";
	}
	
	
	
	

}
