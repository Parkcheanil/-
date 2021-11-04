package com.petworld.command;

import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class OrderVO {
	
	private int oID; //주문 아이디
	private String mID; //회원 아이디
	private Timestamp oRDATE; //주문 날짜
	private String oNAME; //배송자 이름
	private String oPHONE; //배송자 연락처
	private String oAddress; //배송자 기본 주소
	private String oAddress1; //배송자 상세 주소
	private String oPOST; //배송자 우편번호
	private int oAMOUNT; // 상품 총 가격
	private int oProductNUM; // 상품 수량
	private int oPAYMENT; //결제 수단
	private int oINVOICE; //운송장번호
	private int oDELEVERY; //배송비
	private String DELEVERY_STATUS; //배송 상태
	private String pNAME; //상품 이름
	private String pIMAGE; //상품 이미지
}
