<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
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
            <table class="table-item">
           	  <caption class="plus"><a href="customer/customer_management"><i class="fas fa-plus"></i></a></caption>
              <caption class="title">- 최근가입회원</caption>
                <thead>
                    <tr>
                        <th>아이디</th>
                        <th class="board-title">이름</th>
                        <th>핸드폰번호</th>
                        <th>생년월일</th>
                        <th>가입일자</th> 
                    </tr>
                </thead>
                <tbody>
                 <c:forEach var="recUser" items="${recUser }" begin="0" end="3" step="1">
                    <tr>
                        <td>${recUser.id}</td>
                        <td>${recUser.name}</td>
                        <td>${recUser.phone }</td>
                        <td>${recUser.yy }/${recUser.mm }/${recUser.dd }</td>
                        <td>${recUser.regdate }</td>
                    </tr>
                 </c:forEach>
                </tbody>
            </table>
		
            <table class="table-order">
            <caption class="plus"><a href="order/order"><i class="fas fa-plus"></i></a></caption>
              <caption class="title">- 최근주문</caption>
                <thead>
                    <tr>
                        <th>주문번호</th>
                        <th class="board-title">구매자</th>
                        <th>주문일자</th>
                        <th>결제금액</th>
                        <th>결제방식</th>
                    </tr>
                </thead>
                <tbody>
                 <c:forEach var="recOrder" items="${recOrder }" begin="0" end="3" step="1">
                    <tr>
                        <td>${recOrder.oid}</td>
                        <td>${recOrder.mid }</td>
                        <td>${recOrder.ordate }</td>
                        <td>${recOrder.oamount }</td>
                        <td>${recOrder.opayment }</td>
                    </tr>
                 </c:forEach>
                </tbody>
            </table>
	
            <!--차트-->
            <div class="homeGraph">
            <a href="salesPerformenceBoard"><i class="fas fa-plus"></i></a><br>
               <!-- <div id="chartView" style="width: 800px; height: 300px; margin-inline-start: 10px;"> -->
               <img src = "/resources/img/graph.png" style="width: 750px; height: 250px; float:center;"/>
               </div>
           </div>


    <script>
    $(document).ready(function() {

    	$.ajax ({
    		url : "api/adminhome",
    		type: "POST",
    		contentType : "application/json; charset=UTF-8",
    		dataType : "json",
    		success : function (datas, status) { //응답 성공시
    			
    			let values = datas.currentItems;
    			
    			google.charts.load('current', {'packages' : ['corechart', 'line']});
    			google.charts.setOnLoadCallback(drawChart);
    			
    		
    			function drawChart() {
    				let itemsHistory = []; 
    				let itemsArr = []; //아이템 이름과 현재 수량을 담기위한 배열
    				itemsArr.push(['주문날짜', '판매금액']);
    				
    				//넘어온 List 데이터 콘솔로 확인
    				$.each (values, function(index, value) {
    					console.log (index + " : " + value.ordate +  " / " + value.oamount);
    					
    					itemsArr.push([value.ordate, value.oamount]);// 아이템 이름과 수량 추가
    					itemsHistory.push([value.ordate, value.oamount]); //지속적으로 데이터 기록하기 위한 용도 - 한 번만 초기화
    					
    					let data = google.visualization.arrayToDataTable(itemsArr); // 그래프 데이터
    					//console.log(data);
    					
    					/* 그래프 옵션 */
    					let options = {
    						title : '최근 판매 실적',
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
    		error : function (status, error) {
    			console.log(error);
    		}//end error
    	});//end $ajax
    }); //end ready()
    </script>
</body>
</html>
