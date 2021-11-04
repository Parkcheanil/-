package com.petworld.service;

import java.util.ArrayList;
import com.petworld.command.OrderVO;

public interface OrderService {

	public ArrayList<OrderVO> orderList();
	public ArrayList<OrderVO> searchList();
}
