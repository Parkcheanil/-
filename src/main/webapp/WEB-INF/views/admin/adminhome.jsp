<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
	<title>Home</title>
</head>
<body>
<%@ include file="include/adminHeader.jsp" %>
<!-- 구글차트 관련 -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script src="https://www.gstatic.com/charts/loader.js"></script>
	
<div class="content">
        <br>
        <h4 class="font-weight-bold text-dark">Hi, welcome back!</h4>
        ** 최근 건수들 리스트 뿌려줄 예정<br>
        ** 테이블 더보기 기능 넣을 예정<br>
        ** 최근 주문건수?로 그래프 데이터 수정할 예정
        <br>
            <table class="table-order">
              <caption>최근가입회원</caption>
                <thead>
                    <tr>
                        <th>번호</th>
                        <th class="board-title">제목</th>
                        <th>작성자</th>
                        <th>등록일</th>
                        <th>수정일</th> 
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>1</td>
                        <td><a href="#">test</a></td>
                        <td>writer</td>
                        <td>date</td>
                        <td>regdate</td>
                    </tr>
                </tbody>
            </table>
	
            <table class="table-item">
              <caption>최근주문</caption>
                <thead>
                    <tr>
                        <th>번호</th>
                        <th class="board-title">제목</th>
                        <th>작성자</th>
                        <th>등록일</th>
                        <th>수정일</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>1</td>
                        <td><a href="#">test</a></td>
                        <td>writer</td>
                        <td>date</td>
                        <td>regdate</td>
                    </tr>
                </tbody>
            </table>

            <!--차트-->
            <div class="homeGraph">
               <div id="chartView" style="width: 800px; height: 300px; margin-inline-start: 10px;">
               	<div class ="text">
                   <p>확인용 (할 것 확인)</p> 
               </div>
               </div>
           </div>

    </div>

    <script>
    $(document).ready(function() {

    	$.ajax ({
    		url : "api/salesPerformenceBoard",
    		type: "POST",
    		contentType : "application/json; charset=UTF-8",
    		dataType : "json",
    		success : function (datas, status, xhr) { //응답 성공시
    			
    			let values = datas.currentItems;
    			
    			google.charts.load('current', {'packages' : ['corechart', 'line']});
    			google.charts.setOnLoadCallback(drawChart);
    			
    		
    			function drawChart() {
    				let itemsHistory = []; 
    				let itemsArr = []; //아이템 이름과 현재 수량을 담기위한 배열
    				itemsArr.push(['날짜', '판매금액']);
    				
    				//넘어온 List 데이터 콘솔로 확인
    				$.each (values, function(index, value) {
    					console.log (index + " : " + value.salesdate +  " / " + value.salescount+ " / " +value.salesprice);
    					
    					itemsArr.push([value.salesdate, value.salesprice]);// 아이템 이름과 수량 추가
    					itemsHistory.push([value.salesdate, value.salesprice]); //지속적으로 데이터 기록하기 위한 용도 - 한 번만 초기화
    					
    					let data = google.visualization.arrayToDataTable(itemsArr); // 그래프 데이터
    					//console.log(data);
    					
    					/* 그래프 옵션 */
    					let options = {
    						title : '상품 판매 실적',
    						curveType : 'function',
    						legend : {position : 'top'}
    					};
    					/* id ="chartView" div 에 그래프 그리겠다 설정 */
    					let chart = new google.visualization.LineChart(document.getElementById('chartView')); 
    					chart.draw(data, options); // 차트 그리기
    				}); //end $ each ()
    			}//end drawChart ()	
    		}, //end success
    		/* 실패 시 실행될 함수 */
    		error : function (xhr, status, error) {
    			console.log(error);
    		}//end error
    	});//end $ajax
    }); //end ready()
    </script>
</body>
</html>
