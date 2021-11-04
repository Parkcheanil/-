package com.petworld.command;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class QuestionVO {
	private int qno;
	private String qtitle;
	private String qwriter;
	private String qcontent;
	private Date qregdate;
	private int qcnt;
}
