package com.theshoes.jsp.manager.model.dto;

import java.io.Serializable;

public class WishListDTO implements Serializable{

	private static final long serialVersionUID = -7874301217947129770L;
	
	private int wishNo;
	private String wishId;
	
	public WishListDTO() {
	}
	public WishListDTO(int wishNo, String wishId) {
		this.wishNo = wishNo;
		this.wishId = wishId;
	}
	public int getWishNo() {
		return wishNo;
	}
	public void setWishNo(int wishNo) {
		this.wishNo = wishNo;
	}
	public String getWishId() {
		return wishId;
	}
	public void setWishId(String wishId) {
		this.wishId = wishId;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	@Override
	public String toString() {
		return "WishListDTO [wishNo=" + wishNo + ", wishId=" + wishId + "]";
	}
	
	

}
