package com.petworld.mapper;

import java.util.ArrayList;

import com.petworld.command.PayMentVO;
import com.petworld.command.PayVO;
import com.petworld.command.ProductVO;

public interface PayMapper {

	public ArrayList<ProductVO> paymentInfo();
	public ArrayList<PayVO> deliveryList();
	public boolean regist(PayVO vo);
	public PayVO delidetail(int onum);
	public boolean addrUpdate(PayVO vo);
	public boolean addDelete(int onum);
	
	//결제 메서드
	public boolean registPM(PayMentVO vo);
}
