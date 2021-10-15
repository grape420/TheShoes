package com.theshoes.jsp.cs.model.dto;

public class QuestionFileDTO {
	
	private int csFileNo;				// primary key
	private int ctNo;					// foreign key 
	private String originalName;		// 꺼내올 파일의 이름
	private String savedName;			// 저장할 이름 
	private String savePath;			// 저장할 경로
	private String fileType;			// 저장할 파일 타입
	private String thumbnailPath;		// 꺼내올 파일의 위치
	private String status;				// 사용 가능 상태 (생성할 때 'Y')
	
	public QuestionFileDTO() {
	}
	public QuestionFileDTO(int csFileNo, int ctNo, String originalName, String savedName, String savePath,
			String fileType, String thumbnailPath, String status) {
		this.csFileNo = csFileNo;
		this.ctNo = ctNo;
		this.originalName = originalName;
		this.savedName = savedName;
		this.savePath = savePath;
		this.fileType = fileType;
		this.thumbnailPath = thumbnailPath;
		this.status = status;
	}
	public int getCsFileNo() {
		return csFileNo;
	}
	public void setCsFileNo(int csFileNo) {
		this.csFileNo = csFileNo;
	}
	public int getCtNo() {
		return ctNo;
	}
	public void setCtNo(int ctNo) {
		this.ctNo = ctNo;
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
	@Override
	public String toString() {
		return "QuestionThumbDTO [csFileNo=" + csFileNo + ", ctNo=" + ctNo + ", originalName=" + originalName
				+ ", savedName=" + savedName + ", savePath=" + savePath + ", fileType=" + fileType + ", thumbnailPath="
				+ thumbnailPath + ", status=" + status + "]";
	}				
	
}
	