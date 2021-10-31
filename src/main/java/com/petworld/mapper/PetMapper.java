package com.petworld.mapper;

import java.util.ArrayList;

import com.petworld.command.PetVO;


public interface PetMapper {

	public boolean petRegistForm(PetVO vo);
	public ArrayList<PetVO> getList();
	public PetVO petInfo(String pfirst);
	public boolean petInfoUpdate(PetVO vo);
	public String petDelete(int pnum);
}
