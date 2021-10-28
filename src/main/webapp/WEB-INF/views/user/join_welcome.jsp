<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>회원가입</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/common.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/join_welcome.css">
</head>
<body>

    <div class="container">
    <!-- wrapper -->
        <div class="wrap" style="margin: 0 auto;">
            <!-- content-->
            <div class="content">
                <div>
                    <h3>회원이 되신 걸 축하드립니다</h3>
                </div>

                <div class="to_login">
                    <button type="button" id="movetologin" onclick="location.href='login'">로그인 페이지로 이동하기
                    </button>
                </div>
            </div>  
        </div> 
    </div>
</body>
</html>