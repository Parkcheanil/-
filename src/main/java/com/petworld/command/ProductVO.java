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
	private String Pimageaddr;
	
	//11.11_승희 추가
	//상품등록시 연령 나타내주기 위해 사용
	private String petage;
	
	//11.14 승희 추가
	private String uploadpath;
	private String fileloca;
	private String filename;
	
	
}
