package com.theshoes.jsp.board.model.dto;

import java.io.Serializable;

public class ResellThumbDTO implements Serializable{

	private static final long serialVersionUID = 4292895152934337466L;
	
	private int rtNo;
	private String rtFile;
	private int resellNo;
	private String resellFileName;
	private String savaPath;
	private String fileType;
	private String thumbnailPath;
	private String status;
	
	public ResellThumbDTO(int rtNo, String rtFile, int resellNo, String resellFileName, String savaPath,
			String fileType, String thumbnailPath, String status) {
		this.rtNo = rtNo;
		this.rtFile = rtFile;
		this.resellNo = resellNo;
		this.resellFileName = resellFileName;
		this.savaPath = savaPath;
		this.fileType = fileType;
		this.thumbnailPath = thumbnailPath;
		this.status = status;
	}

	public ResellThumbDTO() {
		// TODO Auto-generated constructor stub
	}

	public int getRtNo() {
		return rtNo;
	}

	public void setRtNo(int rtNo) {
		this.rtNo = rtNo;
	}

	public String getRtFile() {
		return rtFile;
	}

	public void setRtFile(String rtFile) {
		this.rtFile = rtFile;
	}

	public int getResellNo() {
		return resellNo;
	}

	public void setResellNo(int resellNo) {
		this.resellNo = resellNo;
	}

	public String getResellFileName() {
		return resellFileName;
	}

	public void setResellFileName(String resellFileName) {
		this.resellFileName = resellFileName;
	}

	public String getSavaPath() {
		return savaPath;
	}

	public void setSavaPath(String savaPath) {
		this.savaPath = savaPath;
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
		return "ResellThumbDTO [rtNo=" + rtNo + ", rtFile=" + rtFile + ", resellNo=" + resellNo + ", resellFileName="
				+ resellFileName + ", savaPath=" + savaPath + ", fileType=" + fileType + ", thumbnailPath="
				+ thumbnailPath + ", status=" + status + "]";
	}
	
	
}
