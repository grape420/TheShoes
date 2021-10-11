package com.theshoes.jsp.shoes.model.dto;

import java.io.Serializable;

public class ShoesThumbDTO implements Serializable{

	private static final long serialVersionUID = -5959887019439389565L;

	private int shoesThumbNo;
	private int stNo;
	private String originalName;
	private String savedName;
	private String savePath;
	private String fileType;
	private String thumbnailPath;
	private String status;
	
	public ShoesThumbDTO() {
	}
	
	public ShoesThumbDTO(int shoesThumbNo, int stNo, String originalName, String savedName, String savePath,
			String fileType, String thumbnailPath, String status) {
		this.shoesThumbNo = shoesThumbNo;
		this.stNo = stNo;
		this.originalName = originalName;
		this.savedName = savedName;
		this.savePath = savePath;
		this.fileType = fileType;
		this.thumbnailPath = thumbnailPath;
		this.status = status;
	}
	public int getShoesThumbNo() {
		return shoesThumbNo;
	}
	public void setShoesThumbNo(int shoesThumbNo) {
		this.shoesThumbNo = shoesThumbNo;
	}
	public int getStNo() {
		return stNo;
	}
	public void setStNo(int stNo) {
		this.stNo = stNo;
	}
	public String getOriginalName() {
		return originalName;
	}
	public void setOriginalName(String originalName) {
		this.originalName = originalName;
	}
	public String getSavedName() {
		return savedName;
	}
	public void setSavedName(String savedName) {
		this.savedName = savedName;
	}
	public String getSavePath() {
		return savePath;
	}
	public void setSavePath(String savePath) {
		this.savePath = savePath;
	}
	public String getFileType() {
		return fileType;
	}
	public void setFileType(String fileType) {
		this.fileType = fileType;
	}
	public String getThumbnailPath() {
		return thumbnailPath;
	}
	public void setThumbnailPath(String thumbnailPath) {
		this.thumbnailPath = thumbnailPath;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	@Override
	public String toString() {
		return "ShoesThumbDTO [shoesThumbNo=" + shoesThumbNo + ", stNo=" + stNo + ", originalName=" + originalName
				+ ", savedName=" + savedName + ", savePath=" + savePath + ", fileType=" + fileType + ", thumbnailPath="
				+ thumbnailPath + ", status=" + status + "]";
	}
	
	
}
