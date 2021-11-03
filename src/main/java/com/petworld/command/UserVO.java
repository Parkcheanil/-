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
	private String userId; 
	private String nick;
	private String pw;
	private String name;
	private String phone;    // 핸드폰 번호
	private String addrZipnum;	  // 우편번호
	private String addrBasic; // 기본주소
	private String addrDetail; // 상세주소
	private String birth;
//	private String regdate;	  // 가입일자
	private String com;	  // 통신사
//	private int grade;		  // 등급
}
