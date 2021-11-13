package com.petworld.util;

import lombok.Data;

@Data //게터, 세터, toString
public class PageVO {
	
	//화면에 그려질 페이지네이션을 계산하는 클래스
	private int startPage; //시작번호
	private int endPage; //끝번호
	private boolean prev; //이전버튼
	private boolean next; //다음버튼
	private int total; //전체 게시글 수
	
	private Criteria cri; 
	private int pageNum; //조회 페이지 번호
	private int amount; //화면에 그려질 개수
	
	//생성자는 cri, total를 받아서 생성하도록 선언
	public PageVO(Criteria cri, int total) {
		this.cri = cri;
		this.total = total;
		this.pageNum = cri.getPageNum();
		this.amount = cri.getAmount();
		
		//계산처리
		//1. endPage계산
		//pageNum이 11을 가리키면 -> endPage는 20
		//pageNum이 25를 가리키면 -> endPage는 30
		//공식 = (int)Math.ceill( 조회페이지번호/ 페이지네이션개수 ) * 페이지네이션개수
		this.endPage = (int)Math.ceil(this.pageNum / 10.0) * 10;
		
		//2. startPage계산
		//끝페이지 - 페이지네이션개수 + 1
		this.startPage = this.endPage - 10 + 1;
		
		//3. realEnd(실제끝번호)
		//총게시글수가 53개라면 -> 맨끝번호는 6
		//총게시글수가 121개라면 -> 맨끝번호는 13
		//공식 = (int)Math.ceil( 총게시글수 / 화면에 그려질 데이터 개수);
		int realEnd = (int)Math.ceil( this.total / (double)this.amount );
		
		//4. 끝번호의 결정
		//데이터 404개라면, realEnd = 41, 
		//1번 페이지 조회할 때, endPage = 10 -> endPage를 따라감
		//41번페이지 조회할 때, endPage = 50 -> realEnd를 따라감
		if(this.endPage > realEnd) {
			this.endPage = realEnd;
		}
		
		//5. 이전버튼 활성화YN
		//startPage = 1, 11, 21, 31.........
		this.prev = this.startPage > 1;
		
		//6. 다음버튼 활성화YN(4번 예시에서 비교하여 계산)
		this.next = realEnd > this.endPage;
	}
}
