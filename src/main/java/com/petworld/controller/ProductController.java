package com.petworld.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/product")
public class ProductController {
	@RequestMapping("productTotal")
	public void productTotal() {
		
	}
	
	@RequestMapping("productDetail")
	public void productDetail() {
		
	}
	@RequestMapping("/cart")
	public void cart() {
	}
	
	@RequestMapping("/order")
	public void order() {
	}
	
	
	@RequestMapping("/cancel")
	public void cancel() {
		
	}
	
	
	@RequestMapping("/change")
	public void change() {
		
	}
}
