package com.petworld.service;

import java.util.ArrayList;

import com.petworld.command.PetVO;

public interface PetService {

	public boolean petRegistForm(PetVO vo);
	public ArrayList<PetVO> getList();
	public PetVO petInfo(String pfirst);
	public boolean petInfoUpdate(PetVO vo);
	
}
