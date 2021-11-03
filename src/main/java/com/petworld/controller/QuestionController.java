package com.petworld.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.petworld.command.QuestionVO;
import com.petworld.service.QuestionService;

@Controller
@RequestMapping("/question")
public class QuestionController {
	
	@Autowired
	@Qualifier("QuestionService")
	private QuestionService questionService;
	
	@RequestMapping("/questionRegist")
	public void questionRegist() {}
	
	@RequestMapping("/question")
	public void question(Model mo) {
		ArrayList<QuestionVO> list = questionService.getList();
		mo.addAttribute("list", list);
	}
	
	@RequestMapping("questionRegistForm")
	public String questionRegistForm(QuestionVO vo, RedirectAttributes RA) {
		System.out.println(vo.toString());
		boolean result = questionService.regist(vo);
		
		
		return "redirect:/question/question";
	}
	
	@RequestMapping({"/questionDetail","/questionModify"})
	public void questionDetail(@RequestParam("qNo") int qNo, Model model) {
		QuestionVO vo = questionService.getContent(qNo);
		model.addAttribute("vo", vo);
				
	}
	

	
	
	
}
