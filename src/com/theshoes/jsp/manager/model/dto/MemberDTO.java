package com.theshoes.jsp.manager.model.dto;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import com.theshoes.jsp.board.model.dto.BoardDTO;

public class MemberDTO implements Serializable{
	
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
	private List<BoardDTO> managerboardList;
	public MemberDTO() {
	}
	public MemberDTO(String id, String name, String pwd, String email, String phone, Date enrollDate,
			String blackReason, String blackListYn, String withDrawYn, String birth, String role,
			List<BoardDTO> managerboardList) {
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
		this.managerboardList = managerboardList;
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
	public List<BoardDTO> getManagerboardList() {
		return managerboardList;
	}
	public void setManagerboardList(List<BoardDTO> managerboardList) {
		this.managerboardList = managerboardList;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	@Override
	public String toString() {
		return "MemberDTO [id=" + id + ", name=" + name + ", pwd=" + pwd + ", email=" + email + ", phone=" + phone
				+ ", enrollDate=" + enrollDate + ", blackReason=" + blackReason + ", blackListYn=" + blackListYn
				+ ", withDrawYn=" + withDrawYn + ", birth=" + birth + ", role=" + role + ", managerboardList="
				+ managerboardList + "]";
	}
	
	
	
	
	
}
