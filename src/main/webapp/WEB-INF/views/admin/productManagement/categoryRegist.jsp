<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/admin.css">
	<div class="category_intable">
		<hr><h4>상품등록</h4><hr>
	   		<form action="insertCategory" method="post">
	   			<table class="cinsert">
	   				<tbody>
	   				 <tr>
	   					<td>1차분류</td>
	   					<td><input type="text" class="form-control" name="fcategory"/></td>
	   				 </tr>
	   				 <tr>
	   					<td>2차분류</td>
	   					<td><input type="text" class="form-control" name="scategory"/></td>
	   				 </tr>
	   				 <tr>
	   					<td>카테고리코드</td>
	   					<td><input type="text" class="form-control" name="ccode"/></td>
	   				 </tr>
	   				</tbody>
	   			 </table>
				   	<button type="submit" class="btn_primary">확인</button>
				   	<button type="button" onclick="location.href='categoryManagementBoard'">목록</button>  
	   		</form>
    </div>
</body>
</html>