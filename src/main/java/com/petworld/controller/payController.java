package com.petworld.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.petworld.command.PayVO;
import com.petworld.service.PayService;

@Controller
@RequestMapping("/pay")
public class payController {

	@Autowired
	@Qualifier("paySrvice")
	private PayService paySrvice;
	
	//결제 화면
	@RequestMapping("/payment")
	public void payment() {
	}
	
	//배송지 입력 화면
	@RequestMapping("/delivery")
	public void delivery() {
	}
	
	//배송지 목록
	@RequestMapping("/deliveryList")
	public void list(Model model) {
		
//		model.addAttribute("list", payService.list());
	}
	
	
	
	
	//배송지 입력 처리
	@RequestMapping("/deliveryForm")
	public String deliveryForm(PayVO vo, RedirectAttributes RA) {
		
		
		
		return "redirect:/pay/payment";
	}
	
	
	
}
