package com.petworld.mapper;

import java.util.ArrayList;

import com.petworld.command.QuestionVO;

public interface QuestionMapper {
	public boolean regist(QuestionVO vo);
	public ArrayList<QuestionVO> getList();
	public QuestionVO getContent(int qNo);
}
