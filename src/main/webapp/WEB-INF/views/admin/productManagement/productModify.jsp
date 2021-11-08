<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ include file="../include/adminHeader.jsp" %>
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/bootstrap.css">
	<div class="product_udtable">
		<hr><h4>상품정보</h4><hr>
		<form action = "updateProduct" method = "post">
            <label>상품ID</label>
            <input class="form-control" name='pid' value = "${vo.pid }" readonly>
 
            <label>카테고리번호</label>
            <input class="form-control" name='pcnum' value = "${vo.pcnum }">

            <label>상품명</label>
            <input class="form-control" name='pname' value = "${vo.pname }">

            <label>가격</label>
            <input class="form-control" name='pprice' value = "${vo.pprice }">

			<label>수량</label>
            <input class="form-control" name='pstock' value = "${vo.pstock }">
			
			<!-- textarea -> value 사용 안됨 밖으로 빼줘야지 가지고 올 수 있음 -->
			<label>상품정보</label>
            <textarea class="form-control" rows="10" name='pdetail'>${vo.pdetail}</textarea>
			
			<label>상품썸네일</label>
            <input class="form-control" name='pimage1addr' value = "${vo.pimage1addr}">
            <label>상품상세이미지</label>
            <input class="form-control" name='pimage2addr' value = "${vo.pimage2addr}">
			
			<br>
            <button type="button" onclick="location.href='productManagementBoard'">목록</button>    
            <button type="submit">변경</button>
            <button type="button" onclick="location.href='deleteProduct?pid=${vo.pid }'">삭제</button>
                   
         </form>
	</div>

</body>
</html>