package com.theshoes.jsp.manager.model.dto;

import java.util.Date;

public class EventContainBuyDateDTO {
	private EventDTO event;
	private Date canBuyDate;
	
	public EventContainBuyDateDTO() {
	}
	public EventContainBuyDateDTO(EventDTO event, Date canBuyDate) {
		this.event = event;
		this.canBuyDate = canBuyDate;
	}
	public EventDTO getEvent() {
		return event;
	}
	public void setEvent(EventDTO event) {
		this.event = event;
	}
	public Date getCanBuyDate() {
		return canBuyDate;
	}
	public void setCanBuyDate(Date canBuyDate) {
		this.canBuyDate = canBuyDate;
	}
	@Override
	public String toString() {
		return "EventContainBuyDateDTO [event=" + event + ", canBuyDate=" + canBuyDate + "]";
	}
	
	
}
