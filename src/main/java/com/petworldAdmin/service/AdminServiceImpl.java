package com.petworldAdmin.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.petworld.command.CategoryVO;
import com.petworld.command.OrderVO;
import com.petworld.command.ProductVO;
import com.petworld.command.SalesVO;
import com.petworld.command.UserVO;
import com.petworldAdmin.mapper.AdminMapper;
import com.petworldAdmin.util.Criteria;

@Service("adminService")
public class AdminServiceImpl implements AdminService{
	
	@Autowired
	private AdminMapper adminMapper;
	
	//메인
	@Override
	public ArrayList<UserVO> maintable1() {
		return adminMapper.maintable1();
	}

	@Override
	public ArrayList<OrderVO> maintable2() {
		return adminMapper.maintable2();
	}
	
	@Override
	public List<OrderVO> mainchart() {
		return adminMapper.mainchart();
	}
	
	//회원
	@Override
	public ArrayList<UserVO> customerList(Criteria cri) {
		return adminMapper.customerList(cri);
	}

	@Override
	public UserVO userDetail(String id) {
		return adminMapper.userDetail(id);
	}

	@Override
	public boolean updateUser(UserVO vo) {
		return adminMapper.updateUser(vo);
	}
	
	//주문
	@Override
	public ArrayList<OrderVO> orderList() {
		return adminMapper.orderList();
	}

	@Override
	public OrderVO orderDetail(int oid) {
		return adminMapper.orderDetail(oid);
	}

	@Override
	public boolean orderUpdate(OrderVO vo) {
		return adminMapper.orderUpdate(vo);
	}

	//상품
	@Override
	public ArrayList<ProductVO> productList(Criteria cri) {
		return adminMapper.productList(cri);
	}
	
	@Override
	public int getTotal(Criteria cri) {
		return adminMapper.getTotal(cri);
	}

	@Override
	public boolean pinsert(ProductVO vo) {
		return adminMapper.pinsert(vo);
	}

	@Override
	public ProductVO getpContent(int pid) {
		return adminMapper.getpContent(pid);
	}

	@Override
	public boolean updateProduct(ProductVO vo) {
		return adminMapper.updateProduct(vo);
	}

	@Override
	public boolean deleteProduct(int pid) {
		return adminMapper.deleteProduct(pid);
	}


	//카테고리
	@Override
	public ArrayList<CategoryVO> categoryList() {
		return adminMapper.categoryList();
	}
	
	//실적
	@Override
	public ArrayList<SalesVO> salesList(Criteria cri) {
		return adminMapper.salesList(cri);
	}

	@Override
	public int getsalesTotal(Criteria cri) {
		return adminMapper.getsalesTotal(cri);
	}
	
	@Override
	public List<SalesVO> getchart() {
		return adminMapper.getchart();
	}


}
