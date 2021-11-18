<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html>
<head>
    <meta charset="UTF-8">
    <title>페이지 이름</title>
   
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
</head>
	
<body>
<!-- header include -->
 <%@ include file="../include/adminHeader.jsp" %>
	<div class="category_intable" style ="padding-left : 170px;  margin-top : 100px; height: 75%; width: 75%;">
		<hr><h4>회원 정보 관리</h4><hr>
		<form action = "updateUser" method = "post">
		<!-- 수정할 내용들  -->
		
		<label>아이디</label>
        <input class="form-control" name='id' value ="${vo.id}">
        <label>이름</label>
        <input class="form-control" name='name' value ="${vo.name}">
        <label>연락처</label>
        <input class="form-control" name='phone' value ="${vo.phone}">
        <label>우편번호</label>
        <input class="form-control" name='addZipNum' value ="${vo.addZipNum}">
        <label>기본 주소</label>
        <input class="form-control" name='addrBasic' value ="${vo.addrBasic}" >
        <label>상세 주소</label>
        <input class="form-control" name='addrDetail' value ="${vo.addrDetail}">
         
        
        
			
            <br>
            <button type="button" onclick="location.href='customer_management'">목록</button>    
            <button type="submit">변경</button>
         </form>
	</div>
</body>
</html>
	
	