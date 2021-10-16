package com.theshoes.jsp.manager.model.dto;

import java.io.Serializable;
import java.util.Date;

public class WinnerDTO implements Serializable{

	private static final long serialVersionUID = 5889529200394124301L;
	
	private int winnerNo;
	private String memberId;
	private String deliveryDetail;
	private String name;
	private String shoesModel;
	private String shoesPrice;
	private String eventStatus;
	public WinnerDTO() {
	}
	public WinnerDTO(int winnerNo, String memberId, String deliveryDetail, String name, String shoesModel,
			String shoesPrice, String eventStatus) {
		this.winnerNo = winnerNo;
		this.memberId = memberId;
		this.deliveryDetail = deliveryDetail;
		this.name = name;
		this.shoesModel = shoesModel;
		this.shoesPrice = shoesPrice;
		this.eventStatus = eventStatus;
	}
	public int getWinnerNo() {
		return winnerNo;
	}
	public void setWinnerNo(int winnerNo) {
		this.winnerNo = winnerNo;
	}
	public String getMemberId() {
		return memberId;
	}
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	public String getDeliveryDetail() {
		return deliveryDetail;
	}
	public void setDeliveryDetail(String deliveryDetail) {
		this.deliveryDetail = deliveryDetail;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getShoesModel() {
		return shoesModel;
	}
	public void setShoesModel(String shoesModel) {
		this.shoesModel = shoesModel;
	}
	public String getShoesPrice() {
		return shoesPrice;
	}
	public void setShoesPrice(String shoesPrice) {
		this.shoesPrice = shoesPrice;
	}
	public String getEventStatus() {
		return eventStatus;
	}
	public void setEventStatus(String eventStatus) {
		this.eventStatus = eventStatus;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	@Override
	public String toString() {
		return "WinnerDTO [winnerNo=" + winnerNo + ", memberId=" + memberId + ", deliveryDetail=" + deliveryDetail
				+ ", name=" + name + ", shoesModel=" + shoesModel + ", shoesPrice=" + shoesPrice + ", eventStatus="
				+ eventStatus + "]";
	}
	
	
	
}
