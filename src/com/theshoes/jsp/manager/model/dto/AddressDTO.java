package com.theshoes.jsp.manager.model.dto;

import java.io.Serializable;

public class AddressDTO implements Serializable{

	private static final long serialVersionUID = 3120272423560288804L;
	
	private int addressNo;
	private String addressId;
	private String addressZip;
	private String addressDetail;
	private String addressName;
	
	public AddressDTO() {
	}
	public AddressDTO(int addressNo, String addressId, String addressZip, String addressDetail, String addressName) {
		this.addressNo = addressNo;
		this.addressId = addressId;
		this.addressZip = addressZip;
		this.addressDetail = addressDetail;
		this.addressName = addressName;
	}
	public int getAddressNo() {
		return addressNo;
	}
	public void setAddressNo(int addressNo) {
		this.addressNo = addressNo;
	}
	public String getAddressId() {
		return addressId;
	}
	public void setAddressId(String addressId) {
		this.addressId = addressId;
	}
	public String getAddressZip() {
		return addressZip;
	}
	public void setAddressZip(String addressZip) {
		this.addressZip = addressZip;
	}
	public String getAddressDetail() {
		return addressDetail;
	}
	public void setAddressDetail(String addressDetail) {
		this.addressDetail = addressDetail;
	}
	public String getAddressName() {
		return addressName;
	}
	public void setAddressName(String addressName) {
		this.addressName = addressName;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	@Override
	public String toString() {
		return "AddressDTO [addressNo=" + addressNo + ", addressId=" + addressId + ", addressZip=" + addressZip
				+ ", addressDetail=" + addressDetail + ", addressName=" + addressName + "]";
	}
	
	

}
