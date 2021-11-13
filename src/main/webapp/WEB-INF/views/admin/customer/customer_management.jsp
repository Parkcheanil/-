<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html>
<head>
    <meta charset="UTF-8">
    <title>페이지 이름</title>
    <!-- 수정버튼  -->
    <!-- detail 수정버튼  -->
	      <script>
	      (function(){
	    	  var msg = "${msg}";
	    	  
	    	  if(msg !==''){
	    		  alert(msg);
	    	  }
	      })();
	      </script>
   
    <!-- icon -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.1/Chart.bundle.js"></script>
    <script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
    
    <!--  css  -->
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/data_table.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/admin.css">
    
	<!-- Bootstrap Data Table -->
	
	 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	 <link rel="stylesheet" href="https://cdn.datatables.net/1.11.3/css/dataTables.bootstrap.min.css">
	 <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
	 <script src="https://cdn.datatables.net/1.11.3/js/jquery.dataTables.min.js"></script>
	 <script src="https://cdn.datatables.net/1.11.3/js/dataTables.bootstrap.min.js"></script>
	
	<style>
   div.dataTables_paginate {
    margin: 0;
    white-space: nowrap;
    text-align: left !important;
   }
   </style>
</head>

<body>
 	<!--  hearder include -->
	<%@ include file="../include/adminHeader.jsp" %>
		<div class ="conntent_area" >
				<hr style="width: 100px;margin: auto;">
				<h4 style="font-size:24px;">회원</h4>
				<hr style="width: 100px;margin: auto;">
				<br>
				<form action="customer_management">
			        <div class="search_area">
			          <div class="searchCustomer">
			            <select class="form-control search-select" name="searchType">
			              <option value="id" ${cri.searchType eq 'id' ? 'selected' : ''}  >아이디</option>
			              <option value="name"${cri.searchType eq 'name' ? 'selected' : ''}  >이름</option>
			              <option value="phone"${cri.searchType eq 'phone' ? 'selected' : ''} >휴대폰번호</option>
			             </select>
			             <input type="text" class="customer_text" name="searchName" value="${cri.searchName }">
			             <button type="submit" class="btn btn-info search-btn" >검색</button>
			             <input type="hidden" name="pageNum" value="1">
			             <input type="hidden" name="amount" value="10">
			       		</div>
					</div>
					</form>
				<table id="example" class="table table-striped table-bordered">
			       <thead>
			            <tr>
			               	<th>아이디</th>
			                <th>이름</th>
			                <th>닉네임</th>
			                <th>휴대폰번호</th>
			                <th>우편번호</th>
			                <th>주소</th>
			                <th>생년월일</th>
			                <th>가입일자</th>
			            </tr>
			        </thead>
			       	<tbody>
			       		<c:forEach var="vo" items="${list}">
				       	<tr>
				       	  <td><a href='customer_management_detail?id=${vo.id}'>${vo.id}</a></td>
			               <td>${vo.name}</td>
			               <td>${vo.nick}</td>
			               <td>${vo.phone }</td>
			               <td>${vo.addrZipNum }</td>
			               <td>${vo.addrBasic} ${vo.addrDetail }</td>
			               <td>${vo.yy }/${vo.mm }/${vo.dd }</td>
			               <td>${vo.regdate }</td>
				      	</tr>
				      	</c:forEach>
			       	</tbody>
			    </table>  
		</div>  
	
	
	  <!-- 데이터테이블 설정 -->
<script>
	<!--date-table	-->
	$(document).ready(function() {
	    $('#example').DataTable( {
	        language : lang_kor,
	        "searching": false
	    } );
	} );
	// Korean
	    var lang_kor = {
	        "decimal" : "",
	        "emptyTable" : "해당되는 회원이 없습니다.",
	        "info" : "_START_ - _END_ (총 _TOTAL_ 명)",
	        "infoEmpty" : "0명",
	        "infoFiltered" : "(전체 _MAX_ 명 중 검색결과)",
	        "infoPostFix" : "",
	        "thousands" : ",",
	        "lengthMenu" : "_MENU_ 개씩 보기",
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
	
	//datepicker
	$(function () {
            $('#datetimepicker1').datetimepicker();
          });

	    
</script>
  
</body>
</html>        