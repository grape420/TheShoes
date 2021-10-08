package com.theshoes.jsp.member.model;

import java.io.Serializable;
import java.sql.Date;

public class MemberDTO implements Serializable{
	
	private static final long serialVersionUID = -2000033327191946319L;
	
	private String id;
	private String name;
	private String pwd;
	private String pohne;
	private java.sql.Date enrollDate;
	private String blackReason;
	private String blackListYn;
	private String withDrawYn;
	private java.sql.Date birth;
	private String role;
	
	public MemberDTO() {
	}

	public MemberDTO(String id, String name, String pwd, String pohne, Date enrollDate, String blackReason,
			String blackListYn, String withDrawYn, Date birth, String role) {
		this.id = id;
		this.name = name;
		this.pwd = pwd;
		this.pohne = pohne;
		this.enrollDate = enrollDate;
		this.blackReason = blackReason;
		this.blackListYn = blackListYn;
		this.withDrawYn = withDrawYn;
		this.birth = birth;
		this.role = role;
	}

	String getId() {
		return id;
	}

	void setId(String id) {
		this.id = id;
	}

	String getName() {
		return name;
	}

	void setName(String name) {
		this.name = name;
	}

	String getPwd() {
		return pwd;
	}

	void setPwd(String pwd) {
		this.pwd = pwd;
	}

	String getPohne() {
		return pohne;
	}

	void setPohne(String pohne) {
		this.pohne = pohne;
	}

	java.sql.Date getEnrollDate() {
		return enrollDate;
	}

	void setEnrollDate(java.sql.Date enrollDate) {
		this.enrollDate = enrollDate;
	}

	String getBlackReason() {
		return blackReason;
	}

	void setBlackReason(String blackReason) {
		this.blackReason = blackReason;
	}

	String getBlackListYn() {
		return blackListYn;
	}

	void setBlackListYn(String blackListYn) {
		this.blackListYn = blackListYn;
	}

	String getWithDrawYn() {
		return withDrawYn;
	}

	void setWithDrawYn(String withDrawYn) {
		this.withDrawYn = withDrawYn;
	}

	java.sql.Date getBirth() {
		return birth;
	}

	void setBirth(java.sql.Date birth) {
		this.birth = birth;
	}

	String getRole() {
		return role;
	}

	void setRole(String role) {
		this.role = role;
	}

	@Override
	public String toString() {
		return "MemberDTO [id=" + id + ", name=" + name + ", pwd=" + pwd + ", pohne=" + pohne + ", enrollDate="
				+ enrollDate + ", blackReason=" + blackReason + ", blackListYn=" + blackListYn + ", withDrawYn="
				+ withDrawYn + ", birth=" + birth + ", role=" + role + "]";
	}
	
}
