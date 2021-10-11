package com.theshoes.jsp.member.model.dto;

public class AddressDTO implements java.io.Serializable{
	
	private String addressName;
	private String nameMM;
	private String phoneMM; 
	private String address1MM; 
	private String address2MM;
	
	public AddressDTO() {
		System.out.println("AddressDTO");
	}

	public AddressDTO(String addressName, String nameMM, String phoneMM, String address1mm, String address2mm) {
		this.addressName = addressName;
		this.nameMM = nameMM;
		this.phoneMM = phoneMM;
		address1MM = address1mm;
		address2MM = address2mm;
	}

	public String getAddressName() {
		return addressName;
	}

	public void setAddressName(String addressName) {
		this.addressName = addressName;
	}

	public String getNameMM() {
		return nameMM;
	}

	public void setNameMM(String nameMM) {
		this.nameMM = nameMM;
	}

	public String getPhoneMM() {
		return phoneMM;
	}

	public void setPhoneMM(String phoneMM) {
		this.phoneMM = phoneMM;
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
		return "AddressDTO [addressName=" + addressName + ", nameMM=" + nameMM + ", phoneMM=" + phoneMM
				+ ", address1MM=" + address1MM + ", address2MM=" + address2MM + "]";
	}

}
