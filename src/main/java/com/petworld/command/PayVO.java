package com.petworld.command;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class PayVO {

	private int onum;
	private String oplace;
	private String oname;
	private String ophone;
	private String opost;
	private String oaddress;
	private String oaddress1;
	private String odefault;
	//11.15추가
	private String userid;
	
}
