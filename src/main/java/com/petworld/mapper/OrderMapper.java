package com.petworld.mapper;

import java.util.ArrayList;
import com.petworld.command.OrderVO;

public interface OrderMapper {

	public ArrayList<OrderVO> orderList();
	public ArrayList<OrderVO> searchList();
}
