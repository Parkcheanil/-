package com.petworld.util;

import lombok.Data;

@Data
public class Criteria {

	//데이터베이스에 전달되는 클래스(페이지번호, 데이터개수)
	private int pageNum;
	private int amount;
	
	//검색키워드
	private String searchName;
	private String searchType;
	
	
	//기본으로 생성될때 초기값을 1, 10
	public Criteria() {
		this(1, 10);
	}
	
	public Criteria(int pageNum, int amount) {
		this.pageNum = pageNum;
		this.amount = amount;
	}
	
}
