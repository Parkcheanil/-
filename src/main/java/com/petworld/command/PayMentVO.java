package com.petworld.command;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class PayMentVO {

//		poID VARCHAR2(50) NOT NULL, /* 결제번호 */
//		cID NUMBER(10), /* 카트번호 */
//		oNUM NUMBER(4), /* 배송지번호 */
//		poAMOUNT NUMBER(50) NOT NULL, /* 총가격 */
//		poDATE DATE NOT NULL, /* 주문날짜 */
//		payTYPE VARCHAR2(30) NOT NULL /* 결제방법 */
	
	private String poId;
	private int cno;
	private int oNum;
	private int poAmount;
	private Date poDATE;
	private String payType;
	
}
