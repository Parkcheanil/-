package com.petworld.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
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
	
	//배송지 입력 처리
	@RequestMapping("/deliveryIn")
	@ResponseBody
	public String deliveryForm(@RequestBody PayVO vo) {
		
		System.out.println(vo);
		boolean result = payService.regist(vo);
		
		System.out.println("deliveryForm() : " + result);
		
		return "success";
	}
	
	//배송지 수정 화면
	@RequestMapping("/deliveryUpdate")
	public void delidetail(@RequestParam("onum") int onum, Model model) {
		
		model.addAttribute("vo", payService.delidetail(onum));
	}
	
	//배송지 수정 처리
	@RequestMapping("/addrUpdate")
	@ResponseBody
	public String addrUpdate(@RequestBody PayVO vo) {
		
		System.out.println(vo);
		boolean result = payService.addrUpdate(vo);
				
		System.out.println("addrUpdate() : " + result);
		
		return "success";
	}
	
	//배송지 삭제 처리
	@RequestMapping("/deliveryDelete")
	public String deliDelete(@RequestParam("onum") int onum, RedirectAttributes RA) {
		
		boolean result = payService.addDelete(onum);
		
		System.out.println("delete여부 : " + result);
		
		if(result) {
			RA.addFlashAttribute("msg", "정상적으로 글이 수정 되었습니다.");
		} else {
			RA.addFlashAttribute("msg", "글 수정이 실패하였습니다.");
		}
		
		return "redirect:/pay/payment";
	}
}
