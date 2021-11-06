package com.petworld.util;

public class MainProductPageVO {
	private int mpstartPage;
	private int mpendPage;
	private boolean mpprev;
	private boolean mpnext;
	
	private int total;
	
	private MainProductCriteria cri;
	
	private int mpPageNum;
	private int mpAmount;
	
	public MainProductPageVO(MainProductCriteria cri,
							 int total) {
		this.cri = cri;
		this.total = total;
		this.mpPageNum = mpPageNum;
		this.mpAmount = mpAmount;
		
		this.mpendPage = (int)Math.ceil(this.mpPageNum / 10.0)*10;
		this.mpstartPage = this.mpendPage - 10 + 1;
		
		int mprealEnd = (int)Math.ceil(this.total / (double)this.mpAmount);
		
		if(this.mpendPage >= mprealEnd) {
			this.mpendPage = mprealEnd;
		}
		
		this.mpprev = this.mpstartPage > 1;
		this.mpnext = mprealEnd > this.mpendPage;
		
	}
	
	
}
