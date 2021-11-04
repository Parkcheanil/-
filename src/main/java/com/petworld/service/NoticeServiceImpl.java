package com.petworld.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.petworld.command.NoticeVO;
import com.petworld.mapper.NoticeMapper;
import com.petworld.util.NoticeCriteria;

@Service("NoticeService")
public class NoticeServiceImpl implements NoticeService{

	@Autowired
	private NoticeMapper noticeMapper;
	
	@Override
	public boolean regist(NoticeVO vo) {
		
		return noticeMapper.regist(vo);
	}

	@Override
	public NoticeVO getContent(int bno) {

		return noticeMapper.getContent(bno);
	}

	@Override
	public boolean Update(NoticeVO vo) {

		return noticeMapper.Update(vo);
	}

	@Override
	public ArrayList<NoticeVO> getList(NoticeCriteria cri) {
		
		return noticeMapper.getList(cri);
	}

	@Override
	public void noticeDelete(int bno) {
		noticeMapper.noticeDelete(bno);
	}


	@Override
	public int getTotal(NoticeCriteria cri) {
		return noticeMapper.getTotal(cri);
	}

	@Override
	public boolean cntUp(int bno) {
		return noticeMapper.cntUp(bno);
	}

}
