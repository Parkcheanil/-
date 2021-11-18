<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
	
<!DOCTYPE html>
<html>
  <head>
	<meta charset="UTF-8">
	<title>로그인</title>
	<!--  -->
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/common.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/login.css">
	
	<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/jquery.js"></script>
	<script type="text/javascript" src="https://developers.kakao.com/sdk/js/kakao.min.js" charset="utf-8"></script>
	<script type="text/javascript"> 
	//카카오 라이브러리 초기화 시키기
	$(document).ready(function(){ 
		//Kakao.init('81482450c583dbc3dc098af3e3123265'); //rest
		Kakao.init('ed7eeb8a51b3c5c39b6a91815529b1cb'); //js
		
		Kakao.isInitialized(); 
	}); 
	</script>
  </head>
  
  <div class="container">
    <div class="wrap">
      <div class="box">
      
        <div class="welcome">환영합니다</div>
		
		<!-- !!!!!!!!!!!!!!!로그인 입력폼 시작!!!!!!!!!!!!!!! -->
        <div class="login-form">
          <form action="login" name="login-form" method="post">
            
            <!-- 아이디 입력 부분 -->
            <div>
            	<input type="text" id="id" name="id" class="text-field" placeholder="아이디" required >
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

              	<input type="hidden" name="kakaoemail" id="kakaoemail" value="" />
              	<button type="button" onclick="loginWithKakao()">
					<img src="${pageContext.request.contextPath }/resources/img/kakao_login_medium_wide.png">
              	</button>
              </div>
			 
			 <!-- 
              <div class="submit-btn-ggl">
                <button type="submit" class="ggl-btn"><img src="${pageContext.request.contextPath }/resources/img/kakao_login_medium_wide.png"></button>
              </div>
			 
              <div class="submit-btn-nv"> 
                <button type="submit" class="naver-btn"><img src="${pageContext.request.contextPath }/resources/img/kakao_login_medium_wide.png"></button>
              </div>
              -->  
            </div> <!-- 버튼 그룹 끝 -->
          </div>   <!-- 소셜 로그인 div 끝 -->
          
    	</form>
    	
       </div>	   <!-- 로그인 폼 div 끝 -->
      </div>	   <!-- 박스 div 끝 -->
    </div>		   <!-- wrap div 끝 -->
  </div>		   <!-- 컨테이너 div 끝 -->
  
  	<!-- 아이디, 비번찾기 팝업창 -->
    <script type="text/javascript">
	  function findid(){
			var url="find_id_form";
			
			window.open(url, "_blank_1", "toolbar=no, menubar=no, scrollbars=yes, resizable=yes, width=600, height=600");
			// 팝업창 설정
		}
	  
	  function findpassword(){
		  var url="find_password_form";
		  
		  window.open(url, "_blank_1", "toolbar=no, menubar=no, scrollbars=yes, resizable=yes, width=600, height=750");
		  // 팝업창 설정
	  }
  </script>
  
  <!-- 카카오톡 로그인 -->	  
  <script>
	  function loginWithKakao() { 
		  console.log('ddd')
		  Kakao.Auth.authorize({ 
		  	  redirectUri:'http://localhost:8181/user/loginpage_kakao_callback'  
		  });
		  
		  Kakao.Auth.login({
			  type: "post",
			  success: function(response) {
			      console.log(response); //access토큰
				  Kakao.API.request({
					  	// 이렇게 해주면 되지 않을까나...
					  	// res : JSON.stringify({"res": res}),	
					    url: '/v2/user/me',
					    success: function(res) {
					        console.log(res); //사용자정보
					        //우리의 DB로 필요한정보를 저장하고 controller에서 처리....
					        // 에이작스에서 다른 서버랑 비동기 통신하는 방법 알기
					    },
					    fail: function(error) {
					        console.log(error);
					    }
					});
			  },
			  fail: function(error) {
			    console.log(error);
			  },
			});
		  
	  }
	  //'http://localhost:8080/user/loginpage_kakao_callback' 
	  
  </script>
  
</body>
</html>