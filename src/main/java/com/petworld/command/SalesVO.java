package com.petworld.command;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class SalesVO {

	private String salesdate;
	private int salespid;
	private String salespname;
	private int salescount;
	private int salesprice;
	
}
