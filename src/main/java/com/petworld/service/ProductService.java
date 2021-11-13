package com.petworld.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.petworld.command.CartVO;
import com.petworld.command.ProductVO;
import com.petworld.util.MainProductCriteria;

public interface ProductService {

	public ProductVO getContent(int pID);
	public ArrayList<ProductVO> getListCri(MainProductCriteria cri);
	public ArrayList<ProductVO> getDogList();
	public ArrayList<ProductVO> getCatList();
	/*
	 * public ArrayList<ProductVO> getList(int cCode, int cRef); public
	 * ArrayList<ProductVO> getList2(int cCode);
	 */
	
	public List<Map<String, Object>> getCartList();

	/* public int insertCart(CartVO cart); */
	public int updateCart(CartVO cart);
	public void cartDelete(int cno);
	public boolean cartMinus(int cno);
	public boolean cartPlus(int cno);

}
