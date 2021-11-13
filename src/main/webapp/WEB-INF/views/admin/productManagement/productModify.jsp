<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="../include/adminHeader.jsp" %>
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/bootstrap.css">
</head>
<body>
<div class="product_udtable">
		<hr><h4>상품정보</h4><hr>
		<form action = "updateProduct" method = "post">
		
            <label>상품ID</label>
            <input class="form-control" name='pid' value = "${vo.pid }" readonly>

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
            <input class="form-control" name='pimageaddr' value = "${vo.pimageaddr}">
			<br>
			<div class="text-end">
            <button type="button" class="btn_primary" onclick="location.href='productManagementBoard'">목록</button>    
            <button type="submit" class="btn_primary" >변경</button>
            <button type="button" class="btn_delete" onclick="location.href='deleteProduct?pid=${vo.pid }'">삭제</button>
            </div>
         </form>
	</div>

</body>
</html>