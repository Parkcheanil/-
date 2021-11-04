package com.petworld.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.petworld.command.NoticeVO;
import com.petworld.service.NoticeService;
import com.petworld.util.NoticeCriteria;
import com.petworld.util.NoticePageVO;



@Controller
@RequestMapping("/notice")
public class NoticeController {
	
	@Autowired
	@Qualifier("NoticeService")
	private NoticeService noticeService;
	
	@RequestMapping("notice")
	public void notice(Model mo, NoticeCriteria cri) {
		ArrayList<NoticeVO> list = noticeService.getList(cri);
		mo.addAttribute("list", list);
		
		int ntotal = noticeService.getTotal(cri);
		NoticePageVO pageVO = new NoticePageVO(cri, ntotal);
		mo.addAttribute("pageVO", pageVO);
		
		System.out.println(pageVO.toString());
		
	}
	
	@RequestMapping("/noticeRegist")
	public void noticeRegist() {
		
	}
	
	@RequestMapping("noticeRegistForm")
	public String noticeRegist(NoticeVO vo,RedirectAttributes RA) {
		System.out.println(vo.toString());
		 
		boolean result = noticeService.regist(vo);
		
		System.out.println(result + "작성완료");

		 
		return "redirect:/notice/notice";
	}
	
	
	@RequestMapping("noticeModify")
	public void noticeModify(@RequestParam("bno") int bno, Model model) {
		NoticeVO vo = noticeService.getContent(bno);
		model.addAttribute("vo", vo);
	}
	
	@RequestMapping("noticeDetail")
	public void noticeDetail(@RequestParam("bno") int bno, Model model) {
		NoticeVO vo = noticeService.getContent(bno);
		model.addAttribute("vo", vo);
		noticeService.cntUp(bno);
		
	}
	
	// 수정기능
	
	@RequestMapping("noticeUpdate")
	public String noticeUpdate(NoticeVO vo, RedirectAttributes RA) {
		
		boolean result = noticeService.Update(vo);
		
		if(result) {
			RA.addFlashAttribute("msg", "정상 수정 되었습니다");
		}else {
			RA.addFlashAttribute("msg", "수정에 실패하였습니다.");
		}
		
		return "redirect:/notice/noticeDetail?bno=" + vo.getBno();
	}
	
	@RequestMapping("delete")
	public String noticeDelete(@RequestParam("bno") int bno){
		noticeService.noticeDelete(bno);
		
		
		return "redirect:/notice/notice";
	}
	
}
