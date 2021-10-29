package com.petworld.controller;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.petworld.command.PetVO;
import com.petworld.service.PetService;
import com.petworld.util.APP_CONSTANT;

import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/pet")
public class PetController {
	
	@Autowired
	@Qualifier("petService")
	private PetService petService;
	
	//펫 입력 폼 화면
	@RequestMapping("/petRegister")
	public void registerFrom(Model model) {
		ArrayList<PetVO> list = petService.getList();
		model.addAttribute("list", list);
	}
	
	//펫 정보수정 화면
	@RequestMapping("/petUpdate")
	public void petUpdate() {
		
	}
	
	//펫 정보입력 처리
	@RequestMapping("/petRegistForm")
	public String register(PetVO vo, RedirectAttributes RA) {
		
		boolean result = petService.petRegistForm(vo);
		
		System.out.println("insert여부 : " + result);
		
		if(result) {
			RA.addFlashAttribute("msg", "정상적으로 글 등록 되었습니다.");
		} else {
			RA.addFlashAttribute("msg", "글 등록이 실패하였습니다.");
		}
		
		return "redirect:/pet/petList";
	}
	
	//펫 목록
	@RequestMapping("petList")
	public void petList(Model model) {
		
		ArrayList<PetVO> list = petService.getList();
		model.addAttribute("list", list);
		
		System.out.println(list);
	}
	

	
	
	
}
