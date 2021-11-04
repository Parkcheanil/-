package com.petworld.mapper;

import java.util.ArrayList;

import com.petworld.command.NoticeVO;
import com.petworld.util.NoticeCriteria;

public interface NoticeMapper {
	public boolean regist(NoticeVO vo);
	public ArrayList<NoticeVO> getList(NoticeCriteria cri);
	public NoticeVO getContent(int bno);
	public boolean Update(NoticeVO vo);
	public void noticeDelete(int bno);
	public int getTotal(NoticeCriteria cri);
	public boolean cntUp(int bno);

}
