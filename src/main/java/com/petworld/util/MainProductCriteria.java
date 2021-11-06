package com.petworld.util;

import lombok.Data;

@Data
public class MainProductCriteria {
	private int mpPageNum;
	private int mpAmount;
	
	private String mpsearchName;
	private String masearchType;
	
	public MainProductCriteria() {
		this(1,5);
	}
	
	public MainProductCriteria(int mpPageNum, int mpAmount) {
		this.mpPageNum = mpPageNum;
		this.mpAmount = mpAmount;
	}
	
	
}
