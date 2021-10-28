package com.petworld.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/pay")
public class payController {

	
	//결제 화면
	@RequestMapping("/payment")
	public void payment() {
	}
	
	//배송지 입력 화면
	@RequestMapping("/delivery")
	public void delivery() {
	}
}
