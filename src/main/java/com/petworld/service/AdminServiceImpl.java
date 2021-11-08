package com.petworld.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.petworld.command.OrderVO;
import com.petworld.command.ProductVO;
import com.petworld.command.SalesVO;
import com.petworld.command.UserVO;
import com.petworld.mapper.AdminMapper;
import com.petworld.util.Criteria;

@Service("adminService")
public class AdminServiceImpl implements AdminService{
	
	@Autowired
	private AdminMapper adminMapper;
	
	@Override
	public ArrayList<UserVO> customerList() {
		return adminMapper.customerList();
	}

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


	@Override
	public ArrayList<SalesVO> salesList() {
		return adminMapper.salesList();
	}

	@Override
	public List<SalesVO> getchart() {
		return adminMapper.getchart();
	}

	

}
