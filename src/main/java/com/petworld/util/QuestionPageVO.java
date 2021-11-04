package com.petworld.util;

import lombok.Data;

@Data
public class QuestionPageVO {
	
	private int qstartPage;
	private int qendPage;
	private boolean qprev;
	private boolean qnext;
	
	private int qtotal;
	
	private QuestionCriteria cri;
	
	private int qpageNum;
	private int qamount;
	
	public QuestionPageVO(QuestionCriteria cri, int qtotal) {
		this.cri = cri;
		this.qtotal = qtotal;
		this.qpageNum = cri.getQpageNum();
		this.qamount = cri.getQamount();
		
		
		//계산처리
		//qendPage 계산
		//pageNum가 11을 가르키면 =>20, pageNum 25를 가리키면->30,pageNum
		//공식=(int)Math.ceil(조회페이지번호/페이지네이션개수)*(페이지네이션개수)
		
		this.qendPage = (int)Math.ceil(this.qpageNum/ 10.0)*10;
		
		//qstartPage 계산
		
		this.qstartPage = this.qendPage - 10+1;
		
		//qrealEnd(실제끝번호)
		//총 게시글 수가 53개라면 맨끝번호는 6
		//총게시글수가 121개라면 -> 맨끝번호는 13
		//공식=(int)Math.ceil(총게시글수/화면에그려질 데이터수)
		int qrealEnd = (int)Math.ceil(this.qtotal/(double)this.qamount);
		
		//끝번호의 결정
		
		//데이터 404개라면? realEnd =41
		//1번페이지 조회할 때,  endPage =10  ->endPage
		//41번 페이지 조회할때, endPage =50 -> realEnd
		
		if(this.qendPage>=qrealEnd) {
			this.qendPage=qrealEnd;
		}
		
		//이전버튼 활성화 YN
		//qstartPage = 1, 11, 21, 31...
		this.qprev = this.qstartPage > 1;
		
		//다음버튼 활성화 YN (4번예시에서 비교하여 계산함)
		this.qnext = qrealEnd > this.qendPage;
		
	}
	
}
