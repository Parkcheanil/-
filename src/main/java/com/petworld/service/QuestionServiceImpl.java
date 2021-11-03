package com.petworld.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.petworld.command.QuestionVO;
import com.petworld.mapper.QuestionMapper;

@Service("QuestionService")
public class QuestionServiceImpl implements QuestionService{

	@Autowired
	private QuestionMapper questionMapper;
	
	@Override
	public boolean regist(QuestionVO vo) {

		return questionMapper.regist(vo);
	}

	@Override
	public ArrayList<QuestionVO> getList() {
		return questionMapper.getList();
	}

	@Override
	public QuestionVO getContent(int qNo) {
		return questionMapper.getContent(qNo);
	}

}
