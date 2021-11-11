package com.petworld.command;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class CartVO {
	private int cno; //카트 번호
	private String id; //유저 id
	private int pid; //상품 id
	private int cartNum; //상품 수량
}
