package com.petworld.command;

import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class OrderVO {
	
	 private int oid; //주문 아이디
	   private String mid; //회원 아이디
	   private Timestamp ordate; //주문 날짜
	   private String oname; //배송자 이름
	   private String ophone; //배송자 연락처
	   private String oaddress; //배송자 기본 주소
	   private String oaddress1; //배송자 상세 주소
	   private String opost; //배송자 우편번호
	   private int oamount; // 상품 총 가격
	   private int oproductnum; // 상품 수량
	   private int opayment; //결제 수단
	   private int oinvoice; //운송장번호
	   private int odelevery; //배송비
	   private String delivery_status; //배송 상태
	   private String pname; //상품 이름
	   private String pimage; //상품 이미지
	
}
