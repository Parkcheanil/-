package com.petworld.service;

import java.util.ArrayList;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.petworld.command.OrderVO;
import com.petworld.mapper.OrderMapper;

@Service("orderService")
public class OrderServiceImpl implements OrderService {

	@Autowired
	private OrderMapper orderMapper;
	
	@Override
	public ArrayList<OrderVO> orderList() {
		
		return orderMapper.orderList();
	}

	@Override
	public ArrayList<OrderVO> searchList() {
		// TODO Auto-generated method stub
		return orderMapper.searchList();
	}

}
