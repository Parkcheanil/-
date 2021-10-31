package com.petworld.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.petworld.command.PayVO;
import com.petworld.command.PetVO;
import com.petworld.command.ProductVO;
import com.petworld.mapper.PayMapper;

@Service("payService")
public class PayServiceImpl implements PayService {

	@Autowired
	private PayMapper paymapper;
	
	@Override
	public ArrayList<PayVO> deliveryList() {
		return paymapper.deliveryList();
	}


	@Override
	public ArrayList<ProductVO> paymentInfo() {
		return paymapper.paymentInfo();
	}

	@Override
	public boolean regist(PayVO vo) {
		return paymapper.regist(vo);
	}

	@Override
	public PayVO addrUpdate(int onum) {
		return paymapper.addrUpdate(onum);
	}
}
