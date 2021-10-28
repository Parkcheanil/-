package com.petworld.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.petworld.command.PetVO;
import com.petworld.service.PetService;

@Controller
@RequestMapping("/pet")
public class PetController {
	
	@Autowired
	@Qualifier("petService")
	private PetService petService;
	
	//펫 입력 폼 화면
	@RequestMapping("/petRegister")
	public void register() {
	}
	
	//펫 정보수정 화면
	@RequestMapping("/petUpdate")
	public void petUpdate() {
	}
	
	//펫 정보입력 폼
	@RequestMapping("/petRegistForm")
	public String petRegistForm(PetVO vo, RedirectAttributes RA) {
		
		boolean result = petService.petRegistForm(vo);
		
		System.out.println("insert여부 : " + result);
		
		if(result) {
			RA.addFlashAttribute("msg", "정상적으로 펫이 등록 되었습니다.");
		} else {
			RA.addFlashAttribute("msg", "펫 등록이 실패하였습니다.");
		}
		
		return "redirect:/pet/petList";
	}
	
	@RequestMapping("petList")
	public void petList() {
		
	}
	
	
	//펫 목록
//	@RequestMapping("/petList")
//	public void petList(Model model) {
//		
//		ArrayList<PetVO> list = petService.getList();
//		model.addAttribute("list", list);
//		
//	}
	
	
	
}
