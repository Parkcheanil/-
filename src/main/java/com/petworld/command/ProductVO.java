package com.petworld.command;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class ProductVO {
			
	
//			pID number(30) NOT NULL, /* 상품아이디 */
//			pNAME VARCHAR2(100), /* 상품명 */
//			pPRICE VARCHAR2(30), /* 가격 */
//			pSTOCK NUMBER(20), /* 수량 */
//			pIMAGE VARCHAR2(200), /* 대표이미지 */
//			pRATE NUMBER(20), /* 판매량 */
//			pdDETAIL VARCHAR2(3000) /* 상세정보 */
	
	private int pid;
	private String pname;
	private String pprice;
	private int pstock;
	private String pimage;
	private int prate;
	private String pddetail;
	
	/*
	 * lombok의 함정
	 * getter, setter메소드를 저장할 때 앞의 문자가 소문자여도 getPID처럼 대문자로 적어주는 경우가 있다.
	 * 따라서 이를 먼저 알아보고 c:forEach를 사용해 주어야 한다.
	 */
}
