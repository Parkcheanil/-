<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Document</title>
  
<!-- 부트스트랩 사용 선언 -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    
<!-- 폰트어썸킷 -->
    <script src="https://kit.fontawesome.com/4dc30431c0.js" crossorigin="anonymous"></script>
<!-- 공통 css -->
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/common.css">
<!-- 풋터 css -->
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/footer.css">
<!-- 헤더 css -->
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/header.css">










	
</head>

  <header id="container">
    <div class="total-wrap">
      <div class="header">
        <div class="img-header">
          <img src="/resources/img/KakaoTalk_20211021_110824073.png">
        </div>
        <div class="content-wrap">
          <div class="header-menu">
            <a href="">
              <span>강아지</span>
            </a>
            <a href="#" onclick="location.href='/product/productTotal'">
              <span>고양이</span>
            </a>
            <a href="#" onclick="location.href='/pet/petList'">
              <span>프로필</span>
            </a>
            <a href="#" onclick="location.href='/notice/notice'">
              <span>공지사항</span>
            </a>
          </div>
          <div class="users-function">
            <a href="#" onclick="location.href='/user/login'">
              <span>Login</span>
            </a>
            <a href="#" onclick="location.href='/user/join'">
              <span>Join</span>
            </a>
            <a href="#" onclick="location.href='/product/cart'">
              <span>Cart</span>
            </a>
          </div>
          <div class="users-function">
            
            <span>Mypage</span>
            <a href="#" onclick="location.href='/product/order'">
              <span>Cart</span>
            </a href="#" onclick="location.href='/product/cart'">
            <span>Logout</span>
          </div>
        </div>
      </div>
    </div>
  </header>

<body>