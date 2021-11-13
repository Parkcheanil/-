package com.petworld.service;

import java.util.ArrayList;

import com.petworld.command.PetVO;

public interface PetService {

	public boolean petRegistForm(PetVO vo);
	public ArrayList<PetVO> getList();
	public PetVO petInfo(int pnum);
	public boolean petInfoUpdate(PetVO vo);
	public String petDelete(int pnum);
	
}
