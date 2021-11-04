package com.petworld.service;

import java.util.ArrayList;

import com.petworld.command.ProductVO;

public interface ProductService {

	public ProductVO getContent(int pID);
	
	public ArrayList<ProductVO> getList();
}
