<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<!DOCTYPE html>
<html lang="en">
<head>
<!--  data_table style -->
<style>
   div.dataTables_paginate {
    margin: 0;
    white-space: nowrap;
    text-align: left !important;
	}
   </style>    
<!-- data_Table css -->	
			<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
			 <link rel="stylesheet" href="https://cdn.datatables.net/1.11.3/css/dataTables.bootstrap.min.css">
			 <link href="https://cdn.datatables.net/buttons/1.5.1/css/buttons.dataTables.min.css" type="text/css" rel="stylesheet">
			 
	<!-- detail 수정버튼  -->
	      <script>
	      (function(){
	    	  var msg = "${msg}";
	    	  
	    	  if(msg !==''){
	    		  alert(msg);
	    	  }
	      })();
	      </script>
	
    <meta charset="UTF-8">
    <title>chartJS</title>
    
    <!-- icon-->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.1/Chart.bundle.js"></script>
    <script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
    
    
	
    <!--css-->
 	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/data_table.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/admin.css">
	

	<!--datepicker -->		
	<link rel="stylesheet" href="http://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	
	
	   
</head>

<body>
			 


<!-- include -->			 
 <%@ include file="../include/adminHeader.jsp" %>
 
<!-- bootstrap -->
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script src="https://cdn.datatables.net/1.11.3/js/jquery.dataTables.min.js"></script>
<script src="https://cdn.datatables.net/1.11.3/js/dataTables.bootstrap.min.js"></script>
			 




 
 
 <div class ="conntent_area" style="margin-top: 20px; margin-left: 160px;background-color: white; padding: 20px;"  >
 	<h2 style="text-align:  center" >주문</h2>
 	<!-- 날짜검색 -->

	<div class="search_area">
	<center>
	 	<form action ="order">
		            <select id="besong" class="form-control search-select" name="searchType">
		          
		              <option value="oid" ${cri.searchType eq 'oid' ? 'selected' : ''}  >주문번호</option>
		              <option value="mid"${cri.searchType eq 'mid' ? 'selected' : ''}  >구매자</option>
		              <option value="delivery_status"${cri.searchType eq 'delivery_status' ? 'selected' : ''} >배송상태</option>
		             </select>
		             <input type="text" class="customer_text" name="searchName" value="${cri.searchName }">
		             <button type="submit" class="btn btn-info search-btn" >검색</button>
		      </center>    
		         
		            
		         </form>
		</div>
		
		 <table id="example" class="table table-striped table-bordered">
		        <thead>
			        <tr>
			       		<th>주문번호</th>
			          	<th>아이디 </th>
			          	<th>주문정보</th>
			          	<th>결제금액</th>
			            <th>주문일자</th>
			            <th>배송상태</th>
			            <th>수정</th>
			         </tr>
		       </thead>
		        <tbody>
			      <c:forEach var="vo" items="${list}">
				    <tr>
	    	       		<td>${vo.oid }</td>
						<td>${vo.mid }</td>			               
		               	<td>${vo.pname }</td>
		                <td>
		                	<fmt:formatNumber value="${vo.oamount }" pattern="#,###"/>
		                </td>
		                <td>
		                <fmt:formatDate value="${vo.ordate }" pattern="yyyy-MM-dd"/>
		                </td>
		                <td>${vo.delivery_status }</td>
						<td><button type="submit" onclick="location.href='order_detail?oid=${vo.oid}'" style="background-color: rgb(7, 42, 75); color: white;">변경</button></td>
					</tr>
				   </c:forEach>
		        </tbody>
      	</table>
</div>	
		 <script>
	// Korean
	    var lang_kor = {
	        "decimal" : "",
	        "emptyTable" : "값이 없습니다.",
	        "info" : "_START_ - _END_ (총 _TOTAL_ 명)",
	        "infoEmpty" : "0명",
	        "infoFiltered" : "(전체 _MAX_ 명 중 검색결과)",
	        "infoPostFix" : "",
	        "thousands" : ",",
	        "lengthMenu" : "_MENU_",
	        "loadingRecords" : "로딩중...",
	        "processing" : "처리중...",
	        "search" : "검색 : ",
	        "zeroRecords" : "검색된 데이터가 없습니다.",
	        "paginate" : {
	            "first" : "첫 페이지",
	            "last" : "마지막 페이지",
	            "next" : "다음",
	            "previous" : "이전"
	        },
	        "aria" : {
	            "sortAscending" : " :  오름차순 정렬",
	            "sortDescending" : " :  내림차순 정렬"
	        }
	    };
	 
	    $(document).ready(function() {
	        $('#example').DataTable( {
	            language : lang_kor,
	            "searching": false
	            
	        } );
	    } );
		
		
		
		
		//datapicker

    $(function() {
        $("#fromDate,#toDate").datepicker({
            
        });                           
    });
</script>
  
</script>
    </script>
 </body>
</html>