package com.petworld.service;

import java.util.ArrayList;

import com.petworld.command.QuestionVO;
import com.petworld.util.QuestionCriteria;

public interface QuestionService {
	
	public boolean regist(QuestionVO vo);
	public ArrayList<QuestionVO> getList(QuestionCriteria cri);
	public QuestionVO getContent(int qno);
	public boolean Update(QuestionVO vo);
	public void questionDelete(int qno);
	public int getTotal(QuestionCriteria cri);
	public boolean cntUp(int qno);
	
}
