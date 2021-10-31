package com.petworld.mapper;

import java.util.ArrayList;

import com.petworld.command.PayVO;
import com.petworld.command.ProductVO;

public interface PayMapper {

	public ArrayList<ProductVO> paymentInfo();
	public ArrayList<PayVO> deliveryList();
	public boolean regist(PayVO vo);
	public PayVO addrUpdate(int onum);
	
}
