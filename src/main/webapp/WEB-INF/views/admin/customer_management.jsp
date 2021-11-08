<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html>
<head>
    <meta charset="UTF-8">
    <title>페이지 이름</title>
    <!--  hearder include -->
    <%@ include file="include/adminHeader.jsp" %>
    <!-- icon -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.1/Chart.bundle.js"></script>
    <script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
    
   
<!-- Bootstrap Data Table -->
	
	 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	 <link rel="stylesheet" href="https://cdn.datatables.net/1.11.3/css/dataTables.bootstrap.min.css">
	 <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
	 <script src="https://cdn.datatables.net/1.11.3/js/jquery.dataTables.min.js"></script>
	 <script src="https://cdn.datatables.net/1.11.3/js/dataTables.bootstrap.min.js"></script>
	 <link href="https://cdn.datatables.net/buttons/1.5.1/css/buttons.dataTables.min.css" type="text/css" rel="stylesheet">
	

</head>

<body>
	<div class ="conntent_area" style="width :1300px; padding : 0px 0px 0px 170px; margin-top : 100px">
		<h2 style="text-align: center;"><i class="far fa-user"></i>&nbsp;회원 조회</a></h2>
		**회원정보 수정 => 회원 아이디 클릭시 수정할 수 있게 변경 예정
		<br>
		**서치박스 변경예정
		<table id="example" class="table table-striped table-bordered" style="width:100%">
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
                  <td><a href="#">${vo.id}</a></td>
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
	
	// Korean
	    var lang_kor = {
	        "decimal" : "",
	        "emptyTable" : "데이터가 없습니다.",
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
	 
	    $(document).ready(function() {
	        $('#example').DataTable( {
	            language : lang_kor 
	        } );
	    } );
		</script>
	
</body>
</html>        