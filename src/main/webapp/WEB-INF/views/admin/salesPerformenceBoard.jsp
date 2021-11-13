<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/bootstrap.css">
	<!-- 구글차트 관련 -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script src="https://www.gstatic.com/charts/loader.js"></script>
	
	<%@ include file="include/adminHeader.jsp" %>
	<div class="sales_content">
		<hr><h4>실적 관리</h4><hr>
		<!--그래프-->
		<div id="chartView" style="width: 800px; height: 300px; margin-inline-start: 10px;"></div>
       <!--게시판-->
    <div class="sales_table">
     <form action="salesPerformenceBoard">
      <div class="search_area">
           <div class="listOrder">
	          <select class="form-control search-select" style="width:75px;" onchange="handleChange(this)">                            
		       <option value="10" ${pageVO.amount eq 10 ? 'selected' : '' } >10</option>
		       <option value="30"${pageVO.amount eq 30 ? 'selected' : '' } >30</option>
		     </select>&nbsp;개씩 보기
		    </div>
		    <div class="searchProduct">
            <select class="form-control search-select" name="searchType">
              <option value="salespid" ${pageVO.cri.searchType eq 'salespid' ? 'selected' : '' }>상품코드</option>
              <option value="salespname" ${pageVO.cri.searchType eq 'salespname' ? 'selected' : '' }>상품명</option>
             </select>
             <input type="text" class="form-control search-input" name="searchName" value="${pageVO.cri.searchName }">
            <!--  <div>
		      	<input type="date" id="fromDate" name="fromDate" value="${dateVO.fromDate }">~
		      	<input type="date" id="toDate" name="toDate" value="${dateVO.toDate }">
		      </div>  -->
             <button type="submit" class="btn btn-info search-btn" >검색</button>
             <input type="hidden" name="pageNum" value="1">
             <input type="hidden" name="amount" value="${pageVO.cri.amount }">
             </div>
            </div>
          </form>
          <br><br>
	<table id="category" class="table table-striped table-bordered" style="width:100%">
        <thead>
            <tr>
              <th>판매날짜</th>
              <th>상품코드</th>
              <th>상품명</th>
              <th class="board-title">판매수량</th>
              <th>판매금액</th>
            </tr>
        </thead>
        <tbody>
        	<c:forEach var="vo" items="${list}">
            <tr>
            	<!-- String => Date 형식으로 바뀐 데이터를 salesdateS로 변수로 담아서 사용해줘야한다. -->
                <td>${vo.salesdate }</td>
                <td>${vo.salespid }</td>
                <td>${vo.salespname}</td>
                <td>${vo.salescount }</td>
                <td>${vo.salesprice}</td>
            </tr>
            </c:forEach>
        </tbody>
    </table>
    </div>
    <form action="salesPerformenceBoard" name="pageForm">
           <div class="text-center">
             <ul class="pagination justify-content-center">
             <c:if test="${pageVO.prev }">
                 <li class="page-item"><a href="#" class="pageLink" data-pagenum="${pageVO.startPage-1}">&laquo;</a></li>
               </c:if>
                           
            <c:forEach var="num" begin="${pageVO.startPage }" end="${pageVO.endPage}" >
                 <li  class="page-item ${num eq pageVO.pageNum ? 'active' : '' }">
                   <a href="#" class="pageLink" data-pagenum="${num }">${num }</a></li>
               </c:forEach>

               <c:if test="${pageVO.next }">
                <li class="page-item"><a class="pageLink" href="#" data-pagenum="${pageVO.endPage+1}">&raquo;</a></li>
               </c:if>
               </ul>
               <input type = "hidden" name = "pageNum" value = "${pageVO.cri.pageNum }">
	           <input type = "hidden" name = "amount" value = "${pageVO.cri.amount }">
	           <input type = "hidden" name = "searchType" value = "${pageVO.cri.searchType }">
	           <input type = "hidden" name = "searchName" value = "${pageVO.cri.searchName }">
             </div>
             </form>
    </div>
    
</body>
<script>

function handleChange(data){
		var searchN = '${pageVO.cri.searchName}'
		var searchT = '${pageVO.cri.searchType}'
		location.href = "salesPerformenceBoard?searchName=" + searchN +"&" + "searchType=" + searchT + "&pageNum=1&amount="+ data.value;
	}

var pagination = document.querySelector(".pagination");

pagination.onclick = function(){
	event.preventDefault(); 
	if(event.target.tagName != 'A') return; 
	
	var pageNum = event.target.dataset.pagenum;
	document.pageForm.pageNum.value = pageNum
	
	document.pageForm.submit();

}

$(document).ready(function() {

	$.ajax ({
		url : "api/salesPerformenceBoard",
		type: "POST",	//Post방식
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
</html>