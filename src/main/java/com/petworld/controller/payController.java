package com.petworld.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.petworld.command.PayMentVO;
import com.petworld.command.PayVO;
import com.petworld.command.UserVO;
import com.petworld.service.PayService;
import com.petworld.service.ProductService;

@Controller
@RequestMapping("/pay")
public class payController {

	@Autowired
	@Qualifier("payService")
	private PayService payService;
	
	@Autowired
	@Qualifier("productService")
	private ProductService productService;
	
	//결제 화면
	@RequestMapping({"/payment", "/deliveryList"})
	public void paymentInfo(Model model, Model cmo, HttpSession session) throws Exception {
		
		List<Map<String, Object>> clist = productService.getCartList();
		cmo.addAttribute("clist", clist);
		
		UserVO user = (UserVO) session.getAttribute("user");
		
		model.addAttribute("user", user);
		model.addAttribute("info", payService.paymentInfo());
		
		ArrayList<PayVO> list = payService.deliveryList();
		model.addAttribute( "list", list );
		
	}
	//상품 바로구매 데이터 수집

	
	//배송지 등록화면
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
	
	//결제 정보 입력
	@RequestMapping("/paymentForm")
	@ResponseBody
	public boolean paymentIn(@RequestBody PayMentVO vo) {
		
		System.out.println("결제 메서드 실행");
		int amount = vo.getPoAmount();
		String type = vo.getPayType();
		
		System.out.println(amount);
		System.out.println(type);
		System.out.println(payService.registPM(vo));
		
		boolean result = payService.registPM(vo);
		
		System.out.println("PM insert : " + result);
		
		return result;
	}
	
	//결제 완료 화면
	@RequestMapping("/completion")
	public void finish() {
	}
	
	
}
