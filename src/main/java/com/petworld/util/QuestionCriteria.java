package com.petworld.util;

import lombok.Data;

@Data
public class QuestionCriteria {
	
	private int qpageNum;
	private int qamount;
	
	private String qsearchName;
	private String qsearchType;
	
	
	public QuestionCriteria() {
		this(1,8);
	}


	public QuestionCriteria(int qpageNum, int qamount) {
		this.qpageNum = qpageNum;
		this.qamount = qamount;
	}
	
	
	
}
