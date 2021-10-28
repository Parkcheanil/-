<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>당신의 가입한 이메일 {어쩌구 저쩌구}로 임시 비밀번호를 보냈습니다</h3>
	<h3>로그인해서 비밀번호를 바꿔주세요</h3>
	
    <div class="to_login">
        <button type="button" id="movetologin" onclick="location.href='search_ID'">
        	이메일 재전송
        </button>
    </div>
	
    <div class="to_login">
       <button type="button" id="movetologin" onclick="location.href='login'">
       		로그인 하기
       </button>
    </div>
</body>
</html>