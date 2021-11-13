package com.petworld.service;

import java.util.ArrayList;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.petworld.command.OrderVO;
import com.petworld.mapper.OrderMapper;
import com.petworld.util.DateVO;


@Service("orderService")
public class OrderServiceImpl implements OrderService {

	@Autowired
	private OrderMapper orderMapper;

	@Override
	public ArrayList<OrderVO> searchList(DateVO vo) {
		
		return orderMapper.searchList(vo);
	}

//	@Override
//	public ArrayList<OrderVO> orderList(DateVO vo) {
//		// TODO Auto-generated method stub
//		return orderMapper.orderList(vo);
//	}
	
	

	/*
	 * @Override public OrderVO searchDate(OrderVO vo) { // TODO Auto-generated
	 * method stub return orderMapper.searchDate(vo); }
	 */
	
}
