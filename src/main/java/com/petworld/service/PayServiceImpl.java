package com.petworld.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.petworld.command.PayVO;
import com.petworld.mapper.PayMapper;

@Service("paySrvice")
public class PayServiceImpl implements PayService {

	@Autowired
	private PayMapper paymapper;
	
	@Override
	public ArrayList<PayVO> list() {
		
		return null;
	}

}
