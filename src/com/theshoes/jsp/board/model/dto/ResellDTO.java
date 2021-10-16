package com.theshoes.jsp.board.model.dto;

import java.io.Serializable;
import java.util.List;

public class ResellDTO implements Serializable{

	private static final long serialVersionUID = 7072059445764041951L;

	private String resellFileName;
	private int resellNo;
	private List<ResellThumbDTO> resellThumb;
	
	public ResellDTO() {
		
	}
	
	public ResellDTO(String resellFileName, int resellNo, List<ResellThumbDTO> resellThumb) {
		this.resellFileName = resellFileName;
		this.resellNo = resellNo;
		this.resellThumb = resellThumb;
	}

	public String getResellFileName() {
		return resellFileName;
	}

	public void setResellFileName(String resellFileName) {
		this.resellFileName = resellFileName;
	}

	public int getResellNo() {
		return resellNo;
	}

	public void setResellNo(int resellNo) {
		this.resellNo = resellNo;
	}

	public List<ResellThumbDTO> getResellThumb() {
		return resellThumb;
	}

	public void setResellThumb(List<ResellThumbDTO> resellThumb) {
		this.resellThumb = resellThumb;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public String toString() {
		return "ResellDTO [resellFileName=" + resellFileName + ", resellNo=" + resellNo + ", resellThumb=" + resellThumb
				+ "]";
	}
	
	
	
}
