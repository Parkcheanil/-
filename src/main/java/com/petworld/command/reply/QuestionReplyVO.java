package com.petworld.command.reply;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;


@Data
@AllArgsConstructor
@NoArgsConstructor
public class QuestionReplyVO {
	private int qno;
	private int qrNo;
	private String qrNicname;
	private String qrContent;
	private String qrPassword;
	private Date qrRegdate;
	private Date qrUpdatedate;
}
