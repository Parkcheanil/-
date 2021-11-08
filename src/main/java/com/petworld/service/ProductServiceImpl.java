package com.petworld.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.petworld.command.CartVO;
import com.petworld.command.ProductVO;
import com.petworld.mapper.ProductMapper;
import com.petworld.util.MainProductCriteria;

@Service("productService")
public class ProductServiceImpl implements ProductService {

	@Autowired
	private ProductMapper productMapper;

	@Override
	public ProductVO getContent(String pID) {
	
		return productMapper.getContent(pID);
	}

	@Override
	public ArrayList<ProductVO> getList() {
		
		return productMapper.getList();
	}


	@Override
	public ArrayList<ProductVO> getListCri(MainProductCriteria cri) {
		return productMapper.getListCri(cri);
	}

	@Override
	public List<Map<String, Object>> getCartList() {
		return productMapper.getCartList();
	}

	@Override
	public void cartDelete(int cno) {
		productMapper.cartDelete(cno);
	}

	@Override
	public boolean cartMinus(int cno) {
		return productMapper.cartMinus(cno);
	}

	@Override
	public boolean cartPlus(int cno) {
		return productMapper.cartPlus(cno);		
	}


	
	
	
}