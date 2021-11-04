package com.petworld.util;

import lombok.Data;

@Data
public class NoticeCriteria {
	private int npageNum;
	private int namount;
	
	private String nsearchName;
	private String nsearchType;
	
	public NoticeCriteria() {
		this(1,8);
	}

	public NoticeCriteria(int npageNum, int namount) {
		this.npageNum = npageNum;
		this.namount = namount;
	}
	
	
}
