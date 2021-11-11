package com.petworld.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.petworld.command.QuestionVO;
import com.petworld.command.reply.QuestionReplyVO;
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
						Model model, Model qrmo,
						QuestionVO vo) {
		
		List<Map<String, Object>> qrlist = questionService.getquestRep(vo.getQno());
		qrmo.addAttribute("qrlist", qrlist);
		System.out.println(qrlist);
		
		return "question/questionDetail";
		
		
//		model.addAttribute("vo", questionService.getContent(qno));
//		questionService.cntUp(qno);
//		System.out.println(vo.toString());
		
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
	
	
	@RequestMapping("questionReplyRegist")
	public String questionReplyRegist(QuestionReplyVO vo) {
		boolean result = questionService.replyRegist(vo);
		
		return "redirect:/question/questionDetail?qno=" + vo.getQno();
	}
	
	
	@RequestMapping("questionReplyUpdate")
	public String questionReplyUpdate(
									  QuestionReplyVO rvo,
									  QuestionVO vo) {
		
		boolean result = questionService.replyUpdate(rvo);
		
		System.out.println("rvo : "+rvo);
		System.out.println("vo : "+vo);
		System.out.println("result : "+ result);
		
		return "redirect:/question/questionDetail?qno=" + vo.getQno();
	}
	
	
	
	@RequestMapping("questionReplyDelete")
	public String questionReplyDelete(@RequestParam("qrno") int qrno,
									  QuestionReplyVO rvo,
									  QuestionVO vo) {
		System.out.println(rvo);
		questionService.replyDelete(qrno);
		System.out.println(vo.getQno());
		
		return "redirect:/question/questionDetail?qno=" + vo.getQno();
	}
	
}
