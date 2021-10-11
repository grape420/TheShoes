package com.theshoes.jsp.shoes.model.dto;

import java.io.Serializable;
import java.sql.Date;

/* MenuAndCategoryDTO는 하나의 메뉴를 하나의 DTO에 담기 위해 만든 것 */
public class ShoesAndCategoryDTO implements Serializable{

	private static final long serialVersionUID = 1608476594543790452L;
	
	private int shoesNo;						// 신발 번호
	private ShoesCategoryDTO category;			// association 관계 (메뉴를 기준으로 1:1관계)
	private String shoesModel;					// 모델명
	private int shoesPrice;						// 발매가
	private String salesYn;						// 판매 여부
	private int salesAmount;					// 판매 수량
	private int reamaningAmount;				// 잔여 수량
	private java.sql.Date startDate;			// 응모 시작일
	private java.sql.Date entDate;				// 응모 종료일
	private java.sql.Date winnerDate;			// 당첨자 발표일
	private String eventEndYn;					// 추첨 종료 상태
	
	public ShoesAndCategoryDTO() {
	}
	
	public ShoesAndCategoryDTO(int shoesNo, ShoesCategoryDTO category, String shoesModel, int shoesPrice,
			String salesYn, int salesAmount, int reamaningAmount, Date startDate, Date entDate, Date winnerDate,
			String eventEndYn) {
		this.shoesNo = shoesNo;
		this.category = category;
		this.shoesModel = shoesModel;
		this.shoesPrice = shoesPrice;
		this.salesYn = salesYn;
		this.salesAmount = salesAmount;
		this.reamaningAmount = reamaningAmount;
		this.startDate = startDate;
		this.entDate = entDate;
		this.winnerDate = winnerDate;
		this.eventEndYn = eventEndYn;
	}
	
	public int getShoesNo() {
		return shoesNo;
	}
	public void setShoesNo(int shoesNo) {
		this.shoesNo = shoesNo;
	}
	public ShoesCategoryDTO getCategory() {
		return category;
	}
	public void setCategory(ShoesCategoryDTO category) {
		this.category = category;
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
	public java.sql.Date getEntDate() {
		return entDate;
	}
	public void setEntDate(java.sql.Date entDate) {
		this.entDate = entDate;
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
		return "ShoesAndCategoryDTO [shoesNo=" + shoesNo + ", category=" + category + ", shoesModel=" + shoesModel
				+ ", shoesPrice=" + shoesPrice + ", salesYn=" + salesYn + ", salesAmount=" + salesAmount
				+ ", reamaningAmount=" + reamaningAmount + ", startDate=" + startDate + ", entDate=" + entDate
				+ ", winnerDate=" + winnerDate + ", eventEndYn=" + eventEndYn + "]";
	}
	
}
