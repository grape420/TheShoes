package com.theshoes.jsp.member.model.dto;

import java.io.Serializable;

import com.theshoes.jsp.shoes.model.dto.ShoesDTO;

public class WishDTO implements Serializable{
	
	private static final long serialVersionUID = 1462510697673408950L;
	
	private int wishNo;
	private String wishId;
	private ShoesDTO shoes;
	
	public WishDTO() {
	}

	public WishDTO(int wishNo, String wishId, ShoesDTO shoes) {
		this.wishNo = wishNo;
		this.wishId = wishId;
		this.shoes = shoes;
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

	public ShoesDTO getShoes() {
		return shoes;
	}

	public void setShoes(ShoesDTO shoes) {
		this.shoes = shoes;
	}

	@Override
	public String toString() {
		return "WishDTO [wishNo=" + wishNo + ", wishId=" + wishId + ", shoes=" + shoes + "]";
	}
	
}
