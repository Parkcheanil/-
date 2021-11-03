package com.petworld.command;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class QuestionVO {
	private int qNo;
	private String qTitle;
	private String qWriter;
	private String qContent;
	private Date qRegdate;
	private int qCnt;
}
