<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>회원가입</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/common.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/PW_search.css">
</head>
<body>
    <div class="container">
    <!-- wrapper -->
        <div class="wrap" style="margin: 0 auto;">
            <!-- content-->
            <div class="content">
                <div>
                    <h3>비밀번호 찾기 페이지</h3>
                </div>

                <div class="to_login">
                    <button type="button" id="movetologin" onclick="location.href='searchPW_result'">
                    	가입한 이메일로 인증 번호 보내기
                    </button>
                </div>
            </div>  
        </div> 
    </div>
</body>
</html>