package com.theshoes.jsp.shoes.model.dto;

import java.io.Serializable;

public class ShoesCategoryDTO implements Serializable{

	private static final long serialVersionUID = -2369410361438548352L;
	
	private int shoesCategoryNo;					// 신발 카테고리 번호
	private String shoesCategoryName;				// 신발 카테고리 이름
	
	public ShoesCategoryDTO() {
	}
	
	public ShoesCategoryDTO(int shoesCategoryNo, String shoesCategoryName) {
		this.shoesCategoryNo = shoesCategoryNo;
		this.shoesCategoryName = shoesCategoryName;
	}
	
	public int getShoesCategoryNo() {
		return shoesCategoryNo;
	}
	public void setShoesCategoryNo(int shoesCategoryNo) {
		this.shoesCategoryNo = shoesCategoryNo;
	}
	public String getShoesCategoryName() {
		return shoesCategoryName;
	}
	public void setShoesCategoryName(String shoesCategoryName) {
		this.shoesCategoryName = shoesCategoryName;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
	@Override
	public String toString() {
		return "ShoesCategoryDTO [shoesCategoryNo=" + shoesCategoryNo + ", shoesCategoryName=" + shoesCategoryName
				+ "]";
	}
	
	

}
