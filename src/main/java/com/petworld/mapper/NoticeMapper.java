package com.petworld.mapper;

import java.util.ArrayList;

import com.petworld.command.NoticeVO;

public interface NoticeMapper {
	public boolean regist(NoticeVO vo);
	public ArrayList<NoticeVO> getList();
	public NoticeVO getContent(int bno);
	public boolean Update(NoticeVO vo);
	public void noticeDelete(int bno);

}
