package com.bitcamp.hgs.admin.domain;

public class AdminLoginRequest {
	private int admin_idx;
	private String email;
	private String password;
	public int getAdmin_idx() {
		return admin_idx;
	}
	public void setAdmin_idx(int admin_idx) {
		this.admin_idx = admin_idx;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	@Override
	public String toString() {
		return "AdminLoginRequest [admin_idx=" + admin_idx + ", email=" + email + ", password=" + password + "]";
	}
	
	
}
