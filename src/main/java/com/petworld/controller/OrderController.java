package com.petworld.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.petworld.command.OrderVO;
import com.petworld.command.PetVO;
import com.petworld.service.OrderService;
import com.petworld.service.PetService;
import com.petworld.util.DateVO;

@Controller
@RequestMapping("/product")
public class OrderController {
	
	@Autowired
	@Qualifier("orderService")
	private OrderService orderService;
	
	@Autowired
	@Qualifier("petService")
	private PetService petService;

	@RequestMapping("order")
	public void order(Model model, HttpServletRequest httpServletRequest, DateVO vo) {
		System.out.println(vo.toString());
		ArrayList<OrderVO> list = orderService.searchList(vo);
		model.addAttribute("list", list); 	  
		model.addAttribute("dateVO", vo);
		model.addAttribute("petVO", petService.getList());
		System.out.println(list);
		
		String fromDate = httpServletRequest.getParameter("fromDate"); 
		String toDate = httpServletRequest.getParameter("toDate");
	
	}
	
	/*
	 * @RequestMapping(value="order_date", method=RequestMethod.GET) public void
	 * order_date(HttpServletRequest httpServletRequest, Model model) {
	 * 
	 * String fromDate = httpServletRequest.getParameter("fromDate"); String toDate
	 * = httpServletRequest.getParameter("toDate");
	 * 
	 * model.addAttribute("vo", fromDate); model.addAttribute("vo", toDate);
	 * 
	 * System.out.println(fromDate); System.out.println(toDate); }
	 */
	
	@RequestMapping("/dateSearch")
	public void dateSearch(OrderVO vo) {
		System.out.println(vo.toString());
	}
}
