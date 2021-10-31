package com.petworld.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.petworld.command.PayVO;
import com.petworld.service.PayService;

@Controller
@RequestMapping("/pay")
public class payController {

	@Autowired
	@Qualifier("payService")
	private PayService payService;
	
	//결제 화면
	@RequestMapping({"/payment", "/deliveryList"})
	public void paymentInfo(Model model) {
		
		model.addAttribute("info", payService.paymentInfo());
		model.addAttribute("list", payService.deliveryList());
	}
	
	//배송지 입력 화면
	@RequestMapping("/delivery")
	public void delivery() {
	}
	
	//배송지 수정 화면
	@RequestMapping("/deliveryUpdate")
	public void delivery(@RequestParam("onum") int onum, Model model) {
		
		PayVO vo = payService.addrUpdate(onum);
		model.addAttribute("vo", vo);
	}
	
	//배송지 수정 처리
//	@RequestMapping("/addrUpdate")
//	public String addrUpdate(PayVO vo) {
//		
//		boolean result = payService.addrUpdate(vo);
//		
//		System.out.println("addrUpdate() : " + result);
//		
//		return "redirect:/pay/deliveryList";
//	}

	//배송지 입력 처리
	@RequestMapping("/deliveryForm")
	public String deliveryForm(PayVO vo) {
		
		boolean result = payService.regist(vo);
		
		System.out.println("deliveryForm() : " + result);
		
		return "redirect:/pay/payment";
	}
	
	//배송지 삭제 처리
	
	
	
}
