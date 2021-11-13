<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.1/Chart.bundle.js"></script>
    <script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/admin.css">

</head>
<body>
<div class="sideBar">
      <nav class="side">
        <a href="${pageContext.request.contextPath }/admin/adminhome"><img src="${pageContext.request.contextPath }/resources/img/logo.png" alt="logo"/></a>
        <br><br>
        <ul class="mainMenu">
          <div class="menu_1">
            <li><a href="${pageContext.request.contextPath }/admin/customer/customer_management" class="mmenu"><i class="far fa-user"></i>&nbsp;고객 관리</a></li>
          </div>
            <hr>
          <div class="menu_2">
            <li><a href="${pageContext.request.contextPath }/admin/order/order" class="mmenu"><i class="fas fa-shopping-cart"></i>&nbsp;주문 관리</a></li>
          </div>
            <hr>
          <div class="menu_3">
            <li><a href="${pageContext.request.contextPath }/admin/productManagement/productManagementBoard" class="mmenu"><i class="fas fa-gift"></i>&nbsp;상품 관리</a></li>
          </div>
          <hr>
          <div class="menu_4">
            <li><a href="${pageContext.request.contextPath }/admin/salesPerformenceBoard" class="mmenu"><i class="fas fa-chart-line"></i>&nbsp;실적 관리</a></li>
          </div>  
          </ul>
        <ul>
    </nav>
 </div>
 <div class="Bar">
	 <a  href="#">&nbsp;<i class="fas fa-sign-out-alt"></i>로그아웃</a>
	 &nbsp;<a href="${pageContext.request.contextPath }/mainpage"><i class="fas fa-home"></i></a>&nbsp;
 </div>
</body>
</html>