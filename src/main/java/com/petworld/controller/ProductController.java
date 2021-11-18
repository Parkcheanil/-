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
import com.petworld.service.PetService;
import com.petworld.service.ProductService;

@Controller
@RequestMapping("/product")
public class ProductController {
	
	@Autowired
	@Qualifier("productService")
	private ProductService productService;
	
	@Autowired
	@Qualifier("petService")
	private PetService petService;
	
	@RequestMapping("productDogTotal")
	public void productDogTotal(Model model) {
		ArrayList<ProductVO> list = productService.getDogList();
		model.addAttribute("list", list);
	}
	
	@RequestMapping("productCatTotal")
	public void productCatTotal(Model model) {
		ArrayList<ProductVO> list2 = productService.getCatList();
		model.addAttribute("list2", list2);
	}
	
	/*
	 * @RequestMapping(value = "productTotal", method=RequestMethod.GET) public void
	 * productTotal(@RequestParam("c") int cCode, @RequestParam("l") int level,
	 * Model model) { 
	 * 
	 * ArrayList<ProductVO> list = null; list = productService.getList2(cCode);
	 * model.addAttribute("list", list); }
	 */
	
	
	@RequestMapping("productDetail")
	public void productDetail(@RequestParam("pID") int pID, Model model) {
		ProductVO vo = productService.getContent(pID);
		model.addAttribute("vo", vo);
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
			System.out.println("cart : " + cart);
		}
		System.out.println(result);
		
		return result;
	}
	
	@RequestMapping("/cancel")
	public void cancel(Model model, HttpSession session) {
		
		UserVO user = (UserVO)session.getAttribute("user");
		
		model.addAttribute("user", user);
		model.addAttribute("petVO", petService.getList());
	}
	
	@RequestMapping("/change")
	public void change() {
		
	}
}
