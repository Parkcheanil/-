/**
 * 21.10.28 : 박천일
 * 수정내용 - pPHOTO,pFIRST컬럼 추가
 * 
 * */

package com.petworld.command;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class PetVO {
	
//	pNUM NUMBER(3) NOT NULL, /* 펫등록번호 */
//	pNAME VARCHAR2(30), /* 펫이름 */
//	pPHOTO VARCHAR2(200), /* 펫사진 */
//	pYEAR NUMBER(4), /* 태어난년도 */
//	pMONTH NUMBER(2), /* 태어난월 */
//	pWEIGHT NUMBER(3), /* 몸무게 */
//	pFIRST VARCHAR2(20), /* 대표강아지 */
//  uploadpath varchar2(200),
//  fileloca  varchar2(200),
//  filename varchar2(200)

	
	private int pnum;
	private String pphoto;
	private String pname; 
	private String pyear; 
	private String pmonth;
	private String pweight;
	private int pfirst;
	private String uploadpath;
	private String fileloca;
	private String filename;
	private String pkind;
	private int pid;
}
