package com.petworld.command;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class NoticeVO {
	private int bno;
	private String title;
	private String writer;
	private String content;
	private Date regdate;
	private int cnt;
}
