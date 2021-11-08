package com.petworld.mapper;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.petworld.command.CartVO;
import com.petworld.command.ProductVO;
import com.petworld.util.MainProductCriteria;

public interface ProductMapper {

	public ProductVO getContent(String pID);
	public ArrayList<ProductVO> getListCri(MainProductCriteria cri);
	public ArrayList<ProductVO> getList();
	public List<Map<String, Object>> getCartList();
	public void cartDelete(int cno);
	public boolean cartMinus(int cno);
	public boolean cartPlus(int cno);
	
}
