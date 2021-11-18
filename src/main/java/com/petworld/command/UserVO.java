package com.petworld.command;
import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class UserVO {

	// id랑 name PW 바꿈
	// addrZipNum -> addZipNum로 바꿈
	// private String pwCk; 삭제함
	
	private String id; 
	private String pw;
	private String name;
	private String nick;
	private String phone;    	// 핸드폰 번호
	private String com;	  		// 통신사
	private String addZipNum;	// 우편번호
	private String addrBasic; 	// 기본주소
	private String addrDetail; 	// 상세주소
	private String yy;
	private String mm;
	private String dd;
	private Date regdate;	  	// 가입일자
	private int grade;		  	// 등급
	
}
