package com.bitcamp.hgs.admin.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bitcamp.hgs.admin.domain.AdminBoardRequest;
import com.bitcamp.hgs.admin.service.AdminService;

@Controller
@RequestMapping("/admin/board")
public class EventBoardController {
	
	@Autowired AdminService service;
	
	@GetMapping
	public String getEventBoard() {
		return "adminBoard/board";
	}
	@PostMapping
	public String postEventBoard(AdminBoardRequest boardReq, HttpSession session, Model model) {
		model.addAttribute("result", service.writeBoard(boardReq, session));
		return "adminBoard/boardComplete";
	}
	@GetMapping("/list")
	public String getEventList() {
		return "adminBoard/list";
	}
}
