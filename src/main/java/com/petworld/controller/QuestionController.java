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
import com.petworld.util.QuestionCriteria;
import com.petworld.util.QuestionPageVO;

@Controller
@RequestMapping("/question")
public class QuestionController {
	
	@Autowired
	@Qualifier("QuestionService")
	private QuestionService questionService;
	
	@RequestMapping("question")
	public void question(Model mo, QuestionCriteria cri) {
		ArrayList<QuestionVO> list = questionService.getList(cri);
		
		mo.addAttribute("list", list);
		
		//페이지네이션
		int qtotal = questionService.getTotal(cri);
		QuestionPageVO pageVO = new QuestionPageVO(cri, qtotal);
		mo.addAttribute("pageVO", pageVO);
		
		
		System.out.println(pageVO.toString());
	}
	
	@RequestMapping("/questionRegist")
	public void questionRegist() {

	}
	
	@RequestMapping("questionRegistForm")
	public String questionRegistForm(QuestionVO vo, RedirectAttributes RA) {
		
		boolean result = questionService.regist(vo);
		System.out.println(vo.toString());
		
		if(result) {
			RA.addFlashAttribute("msg","정상처리되었습니다.");
		}else {
			RA.addFlashAttribute("msg","등록에 실패하였습니다.");
		}
		
		System.out.println(result);
		
		return "redirect:/question/question";
	}
	
	@RequestMapping("questionModify")
	public void modify(@RequestParam("qno") int qno,
						Model model) {
		QuestionVO vo = questionService.getContent(qno);
		model.addAttribute("vo", vo);
	}
	
	@RequestMapping("questionDetail")
	public String detail(@RequestParam("qno") int qno,
						Model model,
						QuestionVO vo) {
		
		model.addAttribute("vo", questionService.getContent(qno));
		questionService.cntUp(qno);
		System.out.println(vo.toString());
		
		return "question/questionDetail";
	}
	
	@RequestMapping("questionUpdate")
	public String questionUpdate(QuestionVO vo, RedirectAttributes RA) {
		
		boolean result = questionService.Update(vo);
		
		if(result) {
			RA.addAttribute("msg", "정상 수정 완료");
		}else {
			RA.addAttribute("msg", "수정 실패");
		}
		
		return "redirect:/question/questionDetail?qno=" + vo.getQno();
		
	}
	
	@RequestMapping("questionDelete")
	public String questionDelete(@RequestParam("qno") int qno) {
		questionService.questionDelete(qno);
		
		return "redirect:/question/question";
	}
	
}
