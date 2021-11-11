package com.petworld.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.petworld.command.QuestionVO;
import com.petworld.command.reply.QuestionReplyVO;
import com.petworld.mapper.QuestionMapper;
import com.petworld.util.QuestionCriteria;

@Service("QuestionService")
public class QuestionServiceImpl implements QuestionService{

	@Autowired
	private QuestionMapper questionMapper;
	
	@Override
	public boolean regist(QuestionVO vo) {
		
		return questionMapper.regist(vo);
	}

	@Override
	public ArrayList<QuestionVO> getList(QuestionCriteria cri) {
		return questionMapper.getList(cri);
	}

	@Override
	public QuestionVO getContent(int qno) {
		
		return questionMapper.getContent(qno);
	}


	@Override
	public int getTotal(QuestionCriteria cri) {
		return questionMapper.getTotal(cri);
	}

	@Override
	public boolean Update(QuestionVO vo) {

		return questionMapper.Update(vo);
	}

	@Override
	public void questionDelete(int qno) {
		questionMapper.questionDelete(qno);
	}

	@Override
	public boolean cntUp(int qno) {
		
		return questionMapper.cntUp(qno);
	}

	@Override
	public void replyDelete(int qrno) {
		questionMapper.replyDelete(qrno);
	}

	@Override
	public List<Map<String, Object>> getquestRep(int qno) {
		return questionMapper.getquestRep(qno);
	}

	@Override
	public boolean replyUpdate(QuestionReplyVO vo) {
		return questionMapper.replyUpdate(vo);
	}

	@Override
	public boolean replyRegist(QuestionReplyVO vo) {
		return questionMapper.replyRegist(vo);
	}

}
