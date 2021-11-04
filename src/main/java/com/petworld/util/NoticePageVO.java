package com.petworld.util;

import lombok.Data;

@Data
public class NoticePageVO {
	private int nstartPage;
	private int nendPage;
	private boolean nprev;
	private boolean nnext;
	
	private int total;
	
	private NoticeCriteria cri;
	
	private int npageNum;
	private int namount;
	
	public NoticePageVO(NoticeCriteria cri, int total) {
		this.cri = cri;
		this.total = total;
		this.npageNum = cri.getNpageNum();
		this.namount = cri.getNamount();
		
		//계산처리
		//endPage 계산
		
		this.nendPage = (int)Math.ceil(this.npageNum / 10.0)*10;
		
		//startPage 계산
		this.nstartPage = this.nendPage - 10+1;
		
		//realEnd
		
		int nrealEnd = (int)Math.ceil(this.total/(double)this.namount);
		
		//끝번호 결정
		
		if(this.nendPage >= nrealEnd) {
			this.nendPage = nrealEnd;
		}
		
		//이전 버튼 활성화 YN
		
		this.nprev = this.nstartPage > 1;
		
		//다음 버튼 활성화 YN
		
		this.nnext = nrealEnd > this.nendPage;
		
	}
	
}
