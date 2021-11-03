package com.petworld.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.petworld.command.NoticeVO;
import com.petworld.mapper.NoticeMapper;

@Service("NoticeService")
public class NoticeServiceImpl implements NoticeService{

	@Autowired
	private NoticeMapper noticeMapper;
	
	@Override
	public boolean regist(NoticeVO vo) {
		
		return noticeMapper.regist(vo);
	}

	@Override
	public ArrayList<NoticeVO> getList() {
		
		return noticeMapper.getList();
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
	public void noticeDelete(int bno) {
		
		noticeMapper.noticeDelete(bno);
	}

}
