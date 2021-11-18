package com.petworld.command;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class PetVO {
	
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
	//11.14 추가
	private String userid;
}
