package com.petworld.command;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class ProductVO {
	
	private int pID;
	private String pNAME;
	private int pPRICE;
	private int pSTOCK;
	private String pIMAGE;
	private int pRATE;
	private int pcNUM;
	private String pCONT;
	
	/*
	 * lombok의 함정
	 * getter, setter메소드를 저장할 때 앞의 문자가 소문자여도 getPID처럼 대문자로 적어주는 경우가 있다.
	 * 따라서 이를 먼저 알아보고 c:forEach를 사용해 주어야 한다.
	 */
}
