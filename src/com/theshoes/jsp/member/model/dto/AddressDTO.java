package com.theshoes.jsp.member.model.dto;

public class AddressDTO implements java.io.Serializable{
	
	private String nameMM; 
	private String addressNo;
	private String addressName;
	private String address1MM;
	private String address2MM;
	public AddressDTO() {
	}
	public AddressDTO(String nameMM, String addressNo, String addressName, String address1mm, String address2mm) {
		this.nameMM = nameMM;
		this.addressNo = addressNo;
		this.addressName = addressName;
		address1MM = address1mm;
		address2MM = address2mm;
	}
	public String getNameMM() {
		return nameMM;
	}
	public void setNameMM(String nameMM) {
		this.nameMM = nameMM;
	}
	public String getAddressNo() {
		return addressNo;
	}
	public void setAddressNo(String addressNo) {
		this.addressNo = addressNo;
	}
	public String getAddressName() {
		return addressName;
	}
	public void setAddressName(String addressName) {
		this.addressName = addressName;
	}
	public String getAddress1MM() {
		return address1MM;
	}
	public void setAddress1MM(String address1mm) {
		address1MM = address1mm;
	}
	public String getAddress2MM() {
		return address2MM;
	}
	public void setAddress2MM(String address2mm) {
		address2MM = address2mm;
	}
	@Override
	public String toString() {
		return "AddressDTO [nameMM=" + nameMM + ", addressNo=" + addressNo + ", addressName=" + addressName
				+ ", address1MM=" + address1MM + ", address2MM=" + address2MM + "]";
	}

	
	

	
}




