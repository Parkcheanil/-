package com.petworld.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/user") 
public class UserController {

	// 화면 보여주기 컨트롤러
	@RequestMapping("/login")
	public void login() {
	}
	
	@RequestMapping("/join")
	public void join() {
	}
	
	@RequestMapping("/join_welcome")
	public void join_welcome() {
	}
	
	@RequestMapping("/search_ID")
	public void search_ID() {
	}
	
	@RequestMapping("/search_PW")
	public void search_PW() {
	}
	
	@RequestMapping("/searchID_result")
	public void searchID_result() {
	}
	
	@RequestMapping("/searchPW_result")
	public void searchPW_result() {
	}
	
	@RequestMapping("/forget_ID")
	public String forget_ID() {
		return "user/search_ID";
	}
	
	@RequestMapping("/forget_PW")
	public String forget_PW() {
		return "user/search_PW";
	}
	
	
}
