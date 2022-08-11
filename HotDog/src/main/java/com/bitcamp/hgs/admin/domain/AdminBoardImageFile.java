package com.bitcamp.hgs.admin.domain;

public class AdminBoardImageFile {
	private int file_idx;
	private String file_url;
	
	public int getFile_idx() {
		return file_idx;
	}
	public void setFile_idx(int file_idx) {
		this.file_idx = file_idx;
	}
	public String getFile_url() {
		return file_url;
	}
	public void setFile_url(String file_url) {
		this.file_url = file_url;
	}
	@Override
	public String toString() {
		return "AdminBoardImageFile [file_idx=" + file_idx + ", file_url=" + file_url + "]";
	}
	
	
}
