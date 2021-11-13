package com.petworld.command;

import org.springframework.web.multipart.MultipartFile;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class ProductVO {
	
	private int pid;
	private String pname;
	private int pprice;
	private int pstock;
	private int prate;
	private String cCode;
	private String pcount;
	//상품상세정보
	private String pdetail;
	
	//이미지 저장용
	//11.05_승희 추가
	private MultipartFile pimage;
	private MultipartFile pimage2;
	private String Pimageaddr;
	private String Pimage2addr;
	
	/*
	 * lombok의 함정
	 * getter, setter메소드를 저장할 때 앞의 문자가 소문자여도 getPID처럼 대문자로 적어주는 경우가 있다.
	 * 따라서 이를 먼저 알아보고 c:forEach를 사용해 주어야 한다.
	 */
}
