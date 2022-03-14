package com.bitcamp.hgs.admin.service;

import javax.servlet.http.HttpSession;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bitcamp.hgs.admin.dao.AdminDao;
import com.bitcamp.hgs.admin.domain.AdminBoardRequest;
import com.bitcamp.hgs.admin.domain.AdminLoginInfo;

@Service
public class AdminService {
	
	private AdminDao dao;
	
	@Autowired
	private SqlSessionTemplate template;
	
	public int writeBoard(AdminBoardRequest boardReq, HttpSession session) {
		int resultCnt = 0;
		System.out.println(boardReq);
		AdminLoginInfo loginInfo = (AdminLoginInfo) session.getAttribute("adminLogger");
		System.out.println(loginInfo);
		boardReq.setAdminIdx(loginInfo.getAdminIdx());
		
		dao = template.getMapper(AdminDao.class);
		
		resultCnt = dao.writeBoard(boardReq);
		
		return resultCnt;
	}
}
