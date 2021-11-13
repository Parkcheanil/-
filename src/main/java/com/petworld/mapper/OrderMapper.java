package com.petworld.mapper;

import java.util.ArrayList;
import com.petworld.command.OrderVO;
import com.petworld.util.DateVO;


public interface OrderMapper {

	//public ArrayList<OrderVO> orderList(DateVO vo);
	public ArrayList<OrderVO> searchList(DateVO vo);
	/* public OrderVO searchDate(OrderVO vo); */
}
