package com.bitcamp.hgs.admin.dao;

import com.bitcamp.hgs.admin.domain.Admin;
import com.bitcamp.hgs.admin.domain.AdminBoardRequest;

public interface AdminDao {
	
	public Admin checkAdminIdPw(String email);

	public int writeBoard(AdminBoardRequest boardReq);
	
}
