package com.petworld.command;

import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class ReplyVO {

	private int rNUM; //댓글 번호
	private String mNICKNAME; //회원ID
	private String rCONTENT; //
	private int rDEPTH;
	private int rRATING;
	private int rGRP;
	private int rGRPS;
	private Timestamp rDATE;
}
