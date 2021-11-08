package com.petworld.command;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class CategoryVO {

	private String cName;
	private String cCode;
	private String cRef;
	private int cage;
	
}
