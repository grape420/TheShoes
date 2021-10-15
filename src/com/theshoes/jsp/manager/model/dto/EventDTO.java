package com.theshoes.jsp.manager.model.dto;

import java.io.Serializable;
import java.util.Date;

import com.theshoes.jsp.shoes.model.dto.ShoesDTO;

public class EventDTO implements Serializable{

	private static final long serialVersionUID = 5948622703193019366L;
	
	private int eventNo;
	private String eventId;
	private int eventShoesId;
	private java.util.Date eventDate;
	private int randomNo;
	private String eventStatus;
	private ShoesDTO shoes;							// association 관계
	public EventDTO() {
	}
	public EventDTO(int eventNo, String eventId, int eventShoesId, Date eventDate, int randomNo, String eventStatus,
			ShoesDTO shoes) {
		this.eventNo = eventNo;
		this.eventId = eventId;
		this.eventShoesId = eventShoesId;
		this.eventDate = eventDate;
		this.randomNo = randomNo;
		this.eventStatus = eventStatus;
		this.shoes = shoes;
	}
	public int getEventNo() {
		return eventNo;
	}
	public void setEventNo(int eventNo) {
		this.eventNo = eventNo;
	}
	public String getEventId() {
		return eventId;
	}
	public void setEventId(String eventId) {
		this.eventId = eventId;
	}
	public int getEventShoesId() {
		return eventShoesId;
	}
	public void setEventShoesId(int eventShoesId) {
		this.eventShoesId = eventShoesId;
	}
	public java.util.Date getEventDate() {
		return eventDate;
	}
	public void setEventDate(java.util.Date eventDate) {
		this.eventDate = eventDate;
	}
	public int getRandomNo() {
		return randomNo;
	}
	public void setRandomNo(int randomNo) {
		this.randomNo = randomNo;
	}
	public String getEventStatus() {
		return eventStatus;
	}
	public void setEventStatus(String eventStatus) {
		this.eventStatus = eventStatus;
	}
	public ShoesDTO getShoes() {
		return shoes;
	}
	public void setShoes(ShoesDTO shoes) {
		this.shoes = shoes;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	@Override
	public String toString() {
		return "EventDTO [eventNo=" + eventNo + ", eventId=" + eventId + ", eventShoesId=" + eventShoesId
				+ ", eventDate=" + eventDate + ", randomNo=" + randomNo + ", eventStatus=" + eventStatus + ", shoes="
				+ shoes + "]";
	}
	
	

}
