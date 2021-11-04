package com.petworld.mapper;

import java.util.ArrayList;

import com.petworld.command.ProductVO;

public interface ProductMapper {

	public ProductVO getContent(int pID);
	
	public ArrayList<ProductVO> getList();
	
}
