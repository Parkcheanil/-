package com.petworld.command;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class ProductVO {

	/* 상품 */
//	CREATE TABLE Product (
//		pID NUMBER(4) NOT NULL, /* 상품아이디 */
//		pNAME VARCHAR2(100), /* 상품명 */
//		pPRICE NUMBER(10), /* 가격 */
//		pSTOCK NUMBER(4),  /* 수량 */
//		pIMAGE VARCHAR2(200), /* 대표이미지 */
//		pRATE NUMBER(10), /* 판매량 */
//		pdDETAIL VARCHAR2(3000), /* 상세정보 */
//		pcNUM NUMBER(6) /* 카테고리번호 */
//	);
	
	private String pname;
	private String pprice;
	private String pstock;
	private String pimage;
	
}
