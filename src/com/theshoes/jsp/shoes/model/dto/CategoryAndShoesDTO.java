package com.theshoes.jsp.shoes.model.dto;

import java.io.Serializable;
import java.util.List;

/* CategoryAndMenuDTO는 하나의 카테고리를 하나의 DTO에 담기 위해 만든 것(하나의 카테고리 기준) */
public class CategoryAndShoesDTO implements Serializable{

	private static final long serialVersionUID = 933480658321781233L;
	
	private int shoesCategoryNo;					// 신발 카테고리 번호
	private String shoesCategoryName;				// 신발 카테고리 이름
	private List<ShoesDTO> shoesList;				// collection 관계(카테고리를 기준으로 1:N관계)
	
	public CategoryAndShoesDTO() {
	}
	
	public CategoryAndShoesDTO(int shoesCategoryNo, String shoesCategoryName, List<ShoesDTO> shoesList) {
		this.shoesCategoryNo = shoesCategoryNo;
		this.shoesCategoryName = shoesCategoryName;
		this.shoesList = shoesList;
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
	public List<ShoesDTO> getShoesList() {
		return shoesList;
	}
	public void setShoesList(List<ShoesDTO> shoesList) {
		this.shoesList = shoesList;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	@Override
	public String toString() {
		return "CategoryAndShoesDTO [shoesCategoryNo=" + shoesCategoryNo + ", shoesCategoryName=" + shoesCategoryName
				+ ", shoesList=" + shoesList + "]";
	}

	
}
