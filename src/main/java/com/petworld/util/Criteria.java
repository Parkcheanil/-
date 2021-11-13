package com.petworld.util;

import lombok.Data;

@Data //게터세터
public class Criteria {
	
	//데이터베이스에 전달될 클래스 (페이지번호, 데이터 개수)
	private int pageNum;
	private int amount;
	
	//검색 키워드
	private String searchName;
	private String searchType;
	
	//기본으로 생성될 때 초기값을 1, 10
	public Criteria() {
		this(1,10); //기본 생성자에서 초기값(1,10) 생성 => 밑에 전달됨
	}
	//아래 생성자를 통해 직접 초기값을 지정 가능
	public Criteria(int pageNum, int amount) {
		this.pageNum = pageNum;
		this.amount = amount;
	}
}
