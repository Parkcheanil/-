package com.petworld.service;

import java.util.ArrayList;

import com.petworld.command.QuestionVO;

public interface QuestionService {
	public boolean regist(QuestionVO vo);
	public ArrayList<QuestionVO> getList();
	public QuestionVO getContent(int qNo);
	
	
}
