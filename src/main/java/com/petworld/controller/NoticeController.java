package com.petworld.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/notice")
public class NoticeController {
	
	@RequestMapping("/detail")
	public void detail() {}
	
	@RequestMapping("/modify")
	public void modify() {}
	
	@RequestMapping("/notice")
	public void notice() {}
	
	@RequestMapping("/question")
	public void question() {}
	
	@RequestMapping("/regist")
	public void regist() {}
	
}
