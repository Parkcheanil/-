package com.petworld.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.petworld.command.QuestionVO;
import com.petworld.command.reply.QuestionReplyVO;
import com.petworld.util.QuestionCriteria;

public interface QuestionService {
	
	public boolean regist(QuestionVO vo);
	public ArrayList<QuestionVO> getList(QuestionCriteria cri);
	public QuestionVO getContent(int qno);
	public boolean Update(QuestionVO vo);
	public void questionDelete(int qno);
	public int getTotal(QuestionCriteria cri);
	public boolean cntUp(int qno);
	public List<Map<String, Object>> getquestRep(int qno);
	public boolean replyRegist(QuestionReplyVO vo);
	public boolean replyUpdate(QuestionReplyVO vo);
	public void replyDelete(int qrno);
	
}
