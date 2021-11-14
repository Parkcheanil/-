package com.petworld.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.petworld.command.UserVO;
import com.petworld.service.ProductService;

@Controller
@RequestMapping("/product")
public class CartController {
	
	@Autowired
	@Qualifier("productService")
	private ProductService productService;
	
	
	@RequestMapping("/cart")
	public void cart(Model cmo, HttpSession session) {
		List<Map<String, Object>> clist = productService.getCartList();
		
		UserVO user = (UserVO) session.getAttribute("user");
		
		cmo.addAttribute("user", user);
		cmo.addAttribute("clist", clist);
		System.out.println(clist);
	}
	
	@RequestMapping("cartDelete")
	public String cartDelete(@RequestParam("cno") int cno) {
		productService.cartDelete(cno);
		return "redirect:/product/cart";
		
	}
	
	@RequestMapping("cartMinus")
	public String cartMinus(@RequestParam("CNO") int cno) {
		productService.cartMinus(cno);
		return "redirect:/product/cart";
	}
	
	@RequestMapping("cartPlus")
	public String cartPlus(@RequestParam("CNO") int cno) {
		productService.cartPlus(cno);
		return "redirect:/product/cart";
	}
	
}
