package com.theshoes.jsp.member.model.dto;

public class WishListDTO {
	
	private int wishNo;
	private String shoesCategoryName;
	private String shoesName;
	private int shoesPrice;
	private String savedName;
	
	public WishListDTO() {
	}

	public WishListDTO(int wishNo, String shoesCategoryName, String shoesName, int shoesPrice, String savedName) {
		this.wishNo = wishNo;
		this.shoesCategoryName = shoesCategoryName;
		this.shoesName = shoesName;
		this.shoesPrice = shoesPrice;
		this.savedName = savedName;
	}

	public int getWishNo() {
		return wishNo;
	}

	public void setWishNo(int wishNo) {
		this.wishNo = wishNo;
	}

	public String getShoesCategoryName() {
		return shoesCategoryName;
	}

	public void setShoesCategoryName(String shoesCategoryName) {
		this.shoesCategoryName = shoesCategoryName;
	}

	public String getShoesName() {
		return shoesName;
	}

	public void setShoesName(String shoesName) {
		this.shoesName = shoesName;
	}

	public int getShoesPrice() {
		return shoesPrice;
	}

	public void setShoesPrice(int shoesPrice) {
		this.shoesPrice = shoesPrice;
	}

	public String getSavedName() {
		return savedName;
	}

	public void setSavedName(String savedName) {
		this.savedName = savedName;
	}

	@Override
	public String toString() {
		return "WishListDTO [wishNo=" + wishNo + ", shoesCategoryName=" + shoesCategoryName + ", shoesName=" + shoesName
				+ ", shoesPrice=" + shoesPrice + ", savedName=" + savedName + "]";
	}
	
}
