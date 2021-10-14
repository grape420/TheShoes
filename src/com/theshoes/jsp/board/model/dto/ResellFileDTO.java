package com.theshoes.jsp.board.model.dto;

import java.io.Serializable;

public class ResellFileDTO implements Serializable{

	private static final long serialVersionUID = -2991037237132258071L;

	private String rtFileName;
	private int ResellNo;
	private String originalName;
	private String savedName;
	private String savePath;
	private String fileType;
	private String thumbnailPath;
	private String status;
	
	public ResellFileDTO(String rtFileName, int resellNo, String originalName, String savedName, String savePath,
			String fileType, String thumbnailPath, String status) {
		this.rtFileName = rtFileName;
		ResellNo = resellNo;
		this.originalName = originalName;
		this.savedName = savedName;
		this.savePath = savePath;
		this.fileType = fileType;
		this.thumbnailPath = thumbnailPath;
		this.status = status;
	}

	public String getRtFileName() {
		return rtFileName;
	}

	public void setRtFileName(String rtFileName) {
		this.rtFileName = rtFileName;
	}

	public int getResellNo() {
		return ResellNo;
	}

	public void setResellNo(int resellNo) {
		ResellNo = resellNo;
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
		return "ResellFileDTO [rtFileName=" + rtFileName + ", ResellNo=" + ResellNo + ", originalName=" + originalName
				+ ", savedName=" + savedName + ", savePath=" + savePath + ", fileType=" + fileType + ", thumbnailPath="
				+ thumbnailPath + ", status=" + status + "]";
	}
	
	
	
}
