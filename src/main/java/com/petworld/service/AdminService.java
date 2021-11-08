package com.petworld.service;

import java.util.ArrayList;
import java.util.List;

import com.petworld.command.OrderVO;
import com.petworld.command.ProductVO;
import com.petworld.command.SalesVO;
import com.petworld.command.UserVO;
import com.petworld.util.Criteria;

public interface AdminService {

			//고객
			public ArrayList<UserVO> customerList();
			
			//주문
			public ArrayList<OrderVO> orderList();
			public OrderVO orderDetail(int oid);
			public boolean orderUpdate(OrderVO vo);
			
			//상품
			public ArrayList<ProductVO> productList(Criteria cri);
			public int getTotal(Criteria cri);
			public boolean pinsert(ProductVO vo);
			public ProductVO getpContent(int pid); 
			public boolean updateProduct(ProductVO vo);
			public boolean deleteProduct(int pid);
			
			//판매실적
			public ArrayList<SalesVO> salesList();
			public List<SalesVO> getchart();
}
