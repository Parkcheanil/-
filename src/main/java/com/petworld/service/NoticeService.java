package com.petworld.service;

import java.util.ArrayList;

import com.petworld.command.NoticeVO;

public interface NoticeService {
	public boolean regist(NoticeVO vo);
	public ArrayList<NoticeVO> getList();
	public NoticeVO getContent(int bno);
	public boolean Update(NoticeVO vo);
	public void noticeDelete(int bno);
}
