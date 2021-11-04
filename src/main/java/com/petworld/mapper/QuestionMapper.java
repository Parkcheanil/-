package com.petworld.mapper;

import java.util.ArrayList;

import com.petworld.command.QuestionVO;
import com.petworld.util.QuestionCriteria;

public interface QuestionMapper {
	public boolean regist(QuestionVO vo);
	public ArrayList<QuestionVO> getList(QuestionCriteria cri);
	public QuestionVO getContent(int qno);
	public int getTotal(QuestionCriteria cri);
	public boolean Update(QuestionVO vo);
	public void questionDelete(int qno);
	public boolean cntUp(int qno);
}
