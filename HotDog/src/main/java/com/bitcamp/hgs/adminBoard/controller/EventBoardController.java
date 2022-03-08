package com.bitcamp.hgs.adminBoard.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/event")
public class EventBoardController {
	
	@GetMapping
	public String getEventBoard() {
		return "adminBoard/board";
	}
	@PostMapping
	public String postEventBoard() {
		return "redirect:/event/list";
	}
	@GetMapping("/list")
	public String getEventList() {
		return "adminBoard/list";
	}
}
