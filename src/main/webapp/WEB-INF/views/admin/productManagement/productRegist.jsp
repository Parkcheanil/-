<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>   
<body>
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/bootstrap.css">
	<%@ include file="../include/adminHeader.jsp" %>
	
	<div class="product_intable">
		<hr><h4>상품등록</h4><hr>
	   		<form action="pinsertForm" method="post" enctype="multipart/form-data">
	   				<br>
	   				<label>1차분류</label>
	   				<select class="category1">
	   					<option value="">전체</option>
	   					<option></option>
	   				</select> &nbsp;&nbsp;
	   				<label>2차분류</label>
	   				<select class="category2">
	   					<option value="">전체</option>
	   				</select>&nbsp;&nbsp;
	   				<label>연령</label>
	   				<select class="category3">
	   					<option value="">전체</option>
	   				</select>
	   				<table>
	   					<tr>
	   						<td>상품</td>
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
	   						<td><input type="text" class="form-control" name="pdetail"/></td>
	   					</tr>
	   					<tr>
	   						<td>상품이미지</td>
	   						<td><input type="file" class="form-control" name="pimage1"/></td>
	   					</tr>
	   					<tr>
	   						<td>상품상세이미지</td>
	   						<td><input type="file" class="form-control" name="pimage2"/></td>
	   					</tr>
	   				</table>
	   				 <br>
				   	<button type="submit" class="btn_primary">확인</button>
				   	<button type="button" onclick="location.href='productManagementBoard'">목록</button>  
	   		</form>
	   	</div>
	   	
	   	 <!-- msg 처리 -->
    <script>
    (function(){
    	var msg = "${msg}"
    	
    	if(msg !== ''){
    		alert(msg)
    	}
    })();
    </script>
	
</body>
</html>