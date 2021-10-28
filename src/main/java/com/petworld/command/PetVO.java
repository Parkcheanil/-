/**
 * 21.10.28 : 박천일
 * 수정내용 - pPHOTO,pFIRST컬럼 추가
 * 
 * */

package com.petworld.command;

import org.springframework.web.multipart.MultipartFile;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class PetVO {
	
//	/* 애완동물프로필 */
//	CREATE TABLE MY_SCHEMA.PetProfile (
//		pNUM NUMBER(3) NOT NULL, /* 펫등록번호 */
//		pNAME VARCHAR2(10), /* 펫이름 */
//		pPHOTO VARCHAR2(50), /* 펫사진 */
//		pYEAR NUMBER(4), /* 태어난년도 */
//		pMONTH NUMBER(2), /* 태어난월 */
//		pWEIGHT VARCHAR2(2) /* 몸무게 */
//	);

	
	private int pNum;
	private String pName, pPhoto;
	private int pYear, pMonth;
	private String pFirst;
	private MultipartFile imageFile;
	private String deleteFileName;
}
