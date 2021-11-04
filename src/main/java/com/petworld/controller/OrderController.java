package com.petworld.controller;

import java.util.ArrayList;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.petworld.util.PageVO;
import com.petworld.command.OrderVO;
import com.petworld.service.OrderService;

@Controller
@RequestMapping("/product")
public class OrderController {
	
	@Autowired
	@Qualifier("orderService")
	private OrderService orderService;

	@RequestMapping("order")
	public void order(Model model) {
		
		/*
		 * ArrayList<OrderVO> list = orderService.orderList();
		 * model.addAttribute("list", list); System.out.println(list.toString());
		 */
		
		
		ArrayList<OrderVO> list = orderService.orderList();
		model.addAttribute("list", list);

		PageVO pageVO = new PageVO();
		model.addAttribute("pageVO", pageVO);
		System.out.println(pageVO.toString());
	}
	
	@RequestMapping("order_date")
	public void order_date(HttpServletRequest httpServletRequest, Model model) {
		
		String fromDate = httpServletRequest.getParameter("fromDate");
		String toDate = httpServletRequest.getParameter("toDate");
	
		System.out.println(fromDate);
		System.out.println(toDate);
		
	}
}
