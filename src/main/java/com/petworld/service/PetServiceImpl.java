package com.petworld.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.petworld.command.PetVO;
import com.petworld.mapper.PetMapper;


@Service("petService")
public class PetServiceImpl implements PetService{

	@Autowired
	private PetMapper petmapper;

	@Override
	public boolean petRegistForm(PetVO vo) {
		return petmapper.petRegistForm(vo);
	}

	@Override
	public ArrayList<PetVO> getList() {
		
		return petmapper.getList();
	}

	@Override
	public PetVO petInfo(int pnum) {
		
		return petmapper.petInfo(pnum);
	}

	@Override
	public boolean petInfoUpdate(PetVO vo) {
		
		return petmapper.petInfoUpdate(vo);
	}

	@Override
	public String petDelete(int pnum) {
		return petmapper.petDelete(pnum);
	}

}
