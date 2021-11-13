<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/admin.css">
</head>
<body>

	<div class="category_table">
		<button onclick="self.close();">X</button>
		<hr><h4>카테고리</h4><hr>
		<br>
    	<table class="categoryList">
        <thead>
            <tr>
              <th>1차분류</th>
              <th>2차분류</th>
              <th>카테고리코드</th>
            </tr>
        </thead>
        <tbody>
         <c:forEach var="vo" items="${list}">
            <tr>
                <td>${vo.ccname }</td>
                <td>${vo.cname }</td>
                <td>${vo.ccode }</td>
            </tr>
           </c:forEach>
        </tbody>
    </table>
    <!--  <nav class="nav_item" aria-label="Page navigation example">
	  <ul class="pagination justify-content-center">
	    <li class="page-item">
	      <a class="page-link" href="#" aria-label="Previous">
	        <span aria-hidden="true">&laquo;</span>
	      </a>
	    </li>
	    <li class="page-item"><a class="page-link" href="#">1</a></li>
	    <li class="page-item"><a class="page-link" href="#">2</a></li>
	    <li class="page-item"><a class="page-link" href="#">3</a></li>
	    <li class="page-item">
	      <a class="page-link" href="#" aria-label="Next">
	        <span aria-hidden="true">&raquo;</span>
	      </a>
	    </li>
	  </ul>
	</nav>	-->
    <div class="text-end">
   	 <button type="button" class="btn_primary" onclick="location.href='categoryRegist'">등록</button>
   	</div>
    </div>
</body>
</html>