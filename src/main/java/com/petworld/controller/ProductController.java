package com.petworld.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.petworld.command.CartVO;
import com.petworld.command.PayMentVO;
import com.petworld.command.ProductVO;
import com.petworld.command.UserVO;
import com.petworld.service.ProductService;

@Controller
@RequestMapping("/product")
public class ProductController {
	
	@Autowired
	@Qualifier("productService")
	private ProductService productService;
	
	@RequestMapping("productDogTotal")
	public void productDogTotal(Model model) {
		ArrayList<ProductVO> list = productService.getList();
		model.addAttribute("list", list);
	}
	
	@RequestMapping("productCatTotal")
	public void productCatTotal(Model model) {
		ArrayList<ProductVO> list = productService.getList();
		model.addAttribute("list", list);
	}
	
	@RequestMapping("productDetail")
	public void productDetail(@RequestParam("pID") int pID, Model model) {
		ProductVO vo = productService.getContent(pID);
		model.addAttribute("vo", vo);
	}
	
	@RequestMapping(value = "purchase", method=RequestMethod.POST)
	public String purchase(HttpSession session, PayMentVO vo) { //submit은 서버에게 데이터를 전송함 --> 서버에서 데이터를 받아야함
		
		UserVO user = (UserVO)session.getAttribute("user");
		String id = user.getId();
		
		productService.insertPurchase(vo);
		
		return "/pay/payment";
	}
	
	@ResponseBody
	@RequestMapping(value = "cart", method=RequestMethod.POST)
	public int cart(CartVO cart, HttpSession session) {
		/* CartVO vo = new CartVO(); */
		int result = 0;
		
		UserVO user = (UserVO)session.getAttribute("user");
		
		if(user != null) {
			cart.setId(user.getId());
			/* result = productService.insertCart(cart); */
			result = productService.updateCart(cart);
			
		}
		
		return result;
		
	}
	
	@RequestMapping("/cancel")
	public void cancel() {
		
	}
	
	@RequestMapping("/change")
	public void change() {
		
	}
}
