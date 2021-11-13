<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
 <!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/bootstrap.css">
	<%@ include file="../include/adminHeader.jsp" %>
</head>   
<body>
	<div class="product_intable">
		<hr><h4>상품등록</h4><hr>
	   		<form action="pinsertForm" method="post" enctype="multipart/form-data">
	   				<br>
	   				<!-- 
	   				<label>1차분류</label>
	   				<select class="category1">
	   					<option value="A">전체</option>
	   					<option value="C">고양이</option>
	   					<option value="D">강아지</option>
	   					<option></option>
	   				</select> &nbsp;&nbsp;
	   				<label>2차분류</label>
	   				<select class="category2">
	   					<option value="">전체</option>
	   				</select>&nbsp;&nbsp; -->
	   				<label>연령</label>
	   				<select name="petage">
	   					<option value="전연령">전연령</option>
	   					<option value="어덜트">어덜트</option>
	   					<option value="시니어">시니어</option>
	   				</select>
	   				<table>
	   					<tr>
	   						<td>상품ID</td>
	   						<td><input type="text" class="form-control" name="pid"/></td>
	   					</tr>
	   					<tr>
	   						<td>상품명</td>
	   						<td><input type="text" class="form-control" name="pname"/></td>
	   					</tr>
	   					<tr>
	   						<td>가격</td>
	   						<td><input type="text" class="form-control" name="pprice"/></td>
	   					</tr>
	   					<tr>
	   						<td>수량</td>
	   						<td><input type="text" class="form-control" name="pstock"/></td>
	   					</tr>
	   					<tr>
	   						<td>상품정보</td>
	   						<td><textarea class="form-control" rows="10" name='pdetail'></textarea></td>
	   					</tr>
	   					<tr>
	   						<td>상품이미지</td>
	   						<td><input type="file" class="form-control" name="pimage"/></td>
	   					</tr>
	   				</table>
	   				 <br>
	   				 <div class="text-end">
				   	<button type="submit" class="btn_primary" onclick="">확인</button>
				   	<button type="button" class="btn_primary" onclick="location.href='productManagementBoard'">목록</button>  
				   	</div>
	   		</form>
	   	</div>
	
</body>
</html>