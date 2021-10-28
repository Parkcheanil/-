<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
	
  <!-- 	
  <  %@ include file='../include/header.jsp' %>
  -->
  
  <!-- 임시로 넣어둠. 헤더푸터 css 해결하면 삭제할 부분. -->
<!DOCTYPE html>
<html>
  <head>
	<meta charset="UTF-8">
	<title>회원가입</title>
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/common.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/login.css">
  </head>
  
  
  <div class="container">
    <div class="wrap">
      <div class="box">
        <div class="welcome">
          환영합니다
        </div>

        <div class="login-form">
        
          <form>
            <input type="text" name="email" class="text-field" placeholder="아이디">
            <input type="password" name="password" class="text-field" placeholder="비밀번호"></br>
            <div class="auto_login">
              <input type="checkbox" class="auto-login">자동로그인
            </div>

            <button type="button" class="submit-btn" onclick="location.href='../mainpage'">로그인</button>
            <button type="button" class="submit-btn" onclick="location.href='join'">회원가입</button>
          </form>

          <div class="search-id">
            <a href="forget_ID">아이디를 잊어버리셨나요?</a>
          </div>

          <div class="search-pw">
            <a href="forget_PW">비밀번호를 잊어버리셨나요?</a>
          </div>


          <div class="sns-login">

            <div class="button-group">
              <div class="submit-btn-kko">
                <button type="submit" class="kko-btn"><img src="${pageContext.request.contextPath }/resources/img/kakao_icon.jpg" width="50px" height="50px"></button>
              </div>

              <div class="submit-btn-ggl">
                <button type="submit" class="ggl-btn"><img src="${pageContext.request.contextPath }/resources/img/naver_icon.jpg" width="50px" height="50px"></button>
              </div>

              <div class="submit-btn-fcb">
                <button type="submit" class="naver-btn"><img src="${pageContext.request.contextPath }/resources/img/google_icon.png" width="50px" height="50px"></button>
              </div>  
            </div>
             <!-- 버튼 그룹 끝 -->
          </div>   <!-- sns-login -->
        
        </div>
      </div>
    </div>
  </div>
  <!-- 푸터 넣으니까 css 깨짐 
  <  %@ include file='../include/footer.jsp' %>
  -->
</body>
</html>