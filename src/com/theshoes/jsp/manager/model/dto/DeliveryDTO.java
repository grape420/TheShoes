package com.theshoes.jsp.manager.model.dto;

import java.io.Serializable;
import java.sql.Date;
import java.util.List;


public class DeliveryDTO implements Serializable{
	
	private static final long serialVersionUID = -2000033327191946319L;
	
	private String id;
	private String name;
	private String pwd;
	private String email;
	private String phone;
	private java.util.Date enrollDate;
	private String blackReason;
	private String blackListYn;
	private String withDrawYn;
	private String birth;
	private String role;
	private List<EventDTO> event;					// collection 관계
	private List<WinnerDTO> winner;					// collection 관계
	private List<AddressDTO> address;				// collection 관계
	public DeliveryDTO() {
	}
	public DeliveryDTO(String id, String name, String pwd, String email, String phone, java.util.Date enrollDate,
			String blackReason, String blackListYn, String withDrawYn, String birth, String role, List<EventDTO> event,
			List<WinnerDTO> winner, List<AddressDTO> address) {
		this.id = id;
		this.name = name;
		this.pwd = pwd;
		this.email = email;
		this.phone = phone;
		this.enrollDate = enrollDate;
		this.blackReason = blackReason;
		this.blackListYn = blackListYn;
		this.withDrawYn = withDrawYn;
		this.birth = birth;
		this.role = role;
		this.event = event;
		this.winner = winner;
		this.address = address;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public java.util.Date getEnrollDate() {
		return enrollDate;
	}
	public void setEnrollDate(java.util.Date enrollDate) {
		this.enrollDate = enrollDate;
	}
	public String getBlackReason() {
		return blackReason;
	}
	public void setBlackReason(String blackReason) {
		this.blackReason = blackReason;
	}
	public String getBlackListYn() {
		return blackListYn;
	}
	public void setBlackListYn(String blackListYn) {
		this.blackListYn = blackListYn;
	}
	public String getWithDrawYn() {
		return withDrawYn;
	}
	public void setWithDrawYn(String withDrawYn) {
		this.withDrawYn = withDrawYn;
	}
	public String getBirth() {
		return birth;
	}
	public void setBirth(String birth) {
		this.birth = birth;
	}
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	public List<EventDTO> getEvent() {
		return event;
	}
	public void setEvent(List<EventDTO> event) {
		this.event = event;
	}
	public List<WinnerDTO> getWinner() {
		return winner;
	}
	public void setWinner(List<WinnerDTO> winner) {
		this.winner = winner;
	}
	public List<AddressDTO> getAddress() {
		return address;
	}
	public void setAddress(List<AddressDTO> address) {
		this.address = address;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	@Override
	public String toString() {
		return "DeliveryDTO [id=" + id + ", name=" + name + ", pwd=" + pwd + ", email=" + email + ", phone=" + phone
				+ ", enrollDate=" + enrollDate + ", blackReason=" + blackReason + ", blackListYn=" + blackListYn
				+ ", withDrawYn=" + withDrawYn + ", birth=" + birth + ", role=" + role + ", event=" + event
				+ ", winner=" + winner + ", address=" + address + "]";
	}
	
	
	
	
}
