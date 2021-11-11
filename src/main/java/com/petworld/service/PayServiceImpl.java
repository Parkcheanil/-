package com.petworld.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.petworld.command.PayMentVO;
import com.petworld.command.PayVO;
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
	public boolean addrUpdate(PayVO vo) {
		return paymapper.addrUpdate(vo);
	}


	@Override
	public boolean addDelete(int onum) {
		return paymapper.addDelete(onum);
	}


	@Override
	public PayVO delidetail(int onum) {
		return paymapper.delidetail(onum);
	}


	@Override
	public boolean registPM(PayMentVO vo) {
		
		return paymapper.registPM(vo);
	}
}
