package com.petworld.command;

import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class PayVO {

	/* 배송지정보 */
//	CREATE TABLE Delivery_addr (
//		oPLACE VARCHAR2(30) NOT NULL, /* 배송지명 */
//		oNAME VARCHAR2(100), /* 수령자 */
//		oPHONE VARCHAR2(15), /* 수령자연락처 */
//		oPOST VARCHAR2(10), /* 수령지우편번호 */
//	    oADDRESS VARCHAR2(300), /* 수령지주소 */
//		oADDRESS1 VARCHAR2(300), /* 수령지주소상세 */
//		oDEFAULT VARCHAR2(2) /* 기본배송지 */
//	);
	
	private String oplace;
	private String oname;
	private String ophone;
	private String opost;
	private String oaddress;
	private String oaddress1;
	private String odefault;
	
}
