package com.petworld.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.petworld.command.ProductVO;
import com.petworld.mapper.ProductMapper;

@Service("productService")
public class ProductServiceImpl implements ProductService {

	@Autowired
	private ProductMapper productMapper;

	@Override
	public ProductVO getContent(int pID) {
	
		return productMapper.getContent(pID);
	}

	@Override
	public ArrayList<ProductVO> getList() {
		
		return productMapper.getList();
	}
}
