package com.petworld.service;

import java.util.ArrayList;

import com.petworld.command.PayVO;
import com.petworld.command.ProductVO;

public interface PayService {

	public ArrayList<ProductVO> paymentInfo();
	public ArrayList<PayVO> deliveryList();
	public boolean regist(PayVO vo);
	public PayVO delidetail(int onum);
	public boolean addrUpdate(PayVO vo);
	public boolean addDelete(int onum);
}
