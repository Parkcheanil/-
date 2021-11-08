<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
	
<!DOCTYPE html>
<html>
  <head>
	<meta charset="UTF-8">
	<title>로그인</title>
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/common.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/login.css">
  </head>
  
  
  <div class="container">
    <div class="wrap">
      <div class="box">
      
      	<!-- 이거 로그인으로 통해서 들어올 때랑 회원가입으로 통해서 들어올때 바뀌도록 제이쿼리 못하나 -->
        <div class="welcome">환영합니다</div>
		
		<!-- !!!!!!!!!!!!!!!로그인 입력폼 시작!!!!!!!!!!!!!!! -->
        <div class="login-form">
          <form action="login" name="login-form" method="post">
            
            <!-- 아이디 입력 부분 -->
            <!-- msg css 미쳐돌아감;; 기능은 오케이 -->
            <div>
            	<input type="text" id="id" name="id" class="text-field" placeholder="아이디" required>
            </div>
            <span>${msg}</span>
            
            <!--  비번 입력 부분 -->
            <div>
            	<input type="password" id="pw" name="pw" class="text-field" placeholder="비밀번호" required>
            </div>
            
            <!-- 자동 로그인 체크부분 -->
            <div class="auto_login">
              <input type="checkbox" id="" name="" class="auto-login">자동로그인 
            </div>
			
			
			<!-- 로그인 버튼 -->
			<!-- 액션:login을 서브밋하면서, onclick="location.href='../mainpage'를 실행하는데 -->
            <button type="submit" class="submit-btn">로그인</button>
            
            <!-- 회원가입 버튼 -->
            <button type="button" class="submit-btn" onclick="location.href='join'">회원가입</button>
          </form>
		  
		  <!-- 아이디 분실 링크 -->
          <div class="search-id" onclick="findid()">
            <a>아이디를 잊어버리셨나요?</a>
          </div>
          
		  <!-- 비밀번호 분실 랑크 -->
          <div class="search-pw" onclick="findpassword()">
            <a>비밀번호를 잊어버리셨나요?</a>
          </div>

		  <!-- 소셜로그인 버튼 -->
          <div class="sns-login">
            <div class="button-group">
            
              <!-- 카카오 간편 로그인 -->
              <div class="submit-btn-kko">
                <button type="submit" class="kko-btn"><img src="${pageContext.request.contextPath }/resources/img/kakao_icon.jpg" width="50px" height="50px"></button>
              </div>
              
			  <!-- 구글 간편 로그인 -->              
              <div class="submit-btn-ggl">
                <button type="submit" class="ggl-btn"><img src="${pageContext.request.contextPath }/resources/img/naver_icon.jpg" width="50px" height="50px"></button>
              </div>
			 
			  <!-- 네이버 간편 로그인 -->
              <div class="submit-btn-nv">
                <button type="submit" class="naver-btn"><img src="${pageContext.request.contextPath }/resources/img/google_icon.png" width="50px" height="50px"></button>
              </div>  
            </div> <!-- 버튼 그룹 끝 -->
          </div>   <!-- 소셜 로그인 div 끝 -->
        </div>	   <!-- 로그인 폼 div 끝 -->
        
      </div>	   <!-- 박스 div 끝 -->
    </div>		   <!-- wrap div 끝 -->
  </div>		   <!-- 컨테이너 div 끝 -->
  
    <script type="text/javascript">
  function findid(){
		var url="find_id_form";
		
		window.open(url, "_blank_1", "toolbar=no, menubar=no, scrollbars=yes, resizable=no, width=500, height=500");
	}
  
  function findpassword(){
	  var url="find_password_form";
	  
	  window.open(url, "_blank_1", "toolbar=no, menubar=no, scrollbars=yes, resizable=no, width=500, height=500");
  }
  </script>
  
</body>
</html>