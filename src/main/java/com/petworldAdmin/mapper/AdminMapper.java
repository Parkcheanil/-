package com.petworldAdmin.mapper;

import java.util.ArrayList;
import java.util.List;

import com.petworld.command.CategoryVO;
import com.petworld.command.OrderVO;
import com.petworld.command.ProductVO;
import com.petworld.command.SalesVO;
import com.petworld.command.UserVO;
import com.petworldAdmin.util.Criteria;


public interface AdminMapper {
		
		//메인
		public ArrayList<UserVO> maintable1();
		public ArrayList<OrderVO> maintable2();
		public List<OrderVO> mainchart();
	
		//회원
		public ArrayList<UserVO> customerList(Criteria cri);
		public UserVO userDetail(String id);
		public boolean updateUser(UserVO vo);
		
		
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
		
		//카테고리
		public ArrayList<CategoryVO> categoryList();
		
		//실적
		public ArrayList<SalesVO> salesList(Criteria cri);
		public int getsalesTotal (Criteria cri);
		public List<SalesVO> getchart();
}
