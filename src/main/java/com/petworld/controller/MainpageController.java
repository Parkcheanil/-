package com.petworld.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.petworld.command.NoticeVO;
import com.petworld.command.ProductVO;
import com.petworld.command.QuestionVO;
import com.petworld.service.NoticeService;
import com.petworld.service.ProductService;
import com.petworld.service.QuestionService;
import com.petworld.util.MainProductCriteria;
import com.petworld.util.NoticeCriteria;
import com.petworld.util.NoticePageVO;
import com.petworld.util.QuestionCriteria;
import com.petworld.util.QuestionPageVO;

@Controller
@RequestMapping("/")
public class MainpageController {
	
	@Autowired
	@Qualifier("NoticeService")
	private NoticeService noticeService;
	
	@Autowired
	@Qualifier("QuestionService")
	private QuestionService questionService;
	
	@Autowired
	@Qualifier("productService")
	private ProductService productService;
	
	
	@RequestMapping("/mainpage")
	public void noticeLink(Model nmo, Model qmo, Model cmo,
						   NoticeCriteria ncri,
						   QuestionCriteria qcri,
						   MainProductCriteria mpcri) {
		ArrayList<NoticeVO> nlist = noticeService.getList(ncri);
		nmo.addAttribute("nlist", nlist);
		
		int ntotal = noticeService.getTotal(ncri);
		NoticePageVO npageVO = new NoticePageVO(ncri, ntotal);
		nmo.addAttribute("npageVO", npageVO);

		
		ArrayList<QuestionVO> qlist = questionService.getList(qcri);
		qmo.addAttribute("qlist", qlist);
		int qtotal = questionService.getTotal(qcri);
		QuestionPageVO qpageVO = new QuestionPageVO(qcri, qtotal);
		qmo.addAttribute("qpageVO", qpageVO);
		
		ArrayList<ProductVO> clist = productService.getListCri(mpcri);
		cmo.addAttribute("clist", clist);
		
	}
	
	
//	@RequestMapping("/mainpage")
//	public void questionLink() {
//		
//	}
	
	
	
}
