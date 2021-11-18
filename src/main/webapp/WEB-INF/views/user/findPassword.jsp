<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!-- 인클루드 헤더 -->
<html>
<head>
	<meta charset="UTF-8">
	<title>비밀번호 찾기</title>
	<script src="${pageContext.request.contextPath }/resources/js/jquery.js"></script>
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/common.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/search.css">
</head>
<body>
<section>
	<!-- container -->
    <div class="container">
    <!-- wrapper -->
        <div class="wrap" style="margin: 0 auto;">
            <!-- box-->
            <div class="box">
                
                <!-- 입력폼 시작 !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! -->
                <form action="find_pw" class="SearchForm" name="findform" method="post">
               	    <!-- 타이틀 박스 -->
                	<div class="titlebox">비밀번호 찾기</div>
                    
                    <!-- 이름 -->
                    <div class="form-group">
	                        <label for="name">이름</label>
	                        <div class="input-group">
	                            <input type="text" class="form-control" name="name" id="name" placeholder="이름(두 글자 이상입니다)" >
	                        </div>
	                        <span>${msg}</span>
	                    </div>
	
	                    <!-- ID -->
	                    <!-- 뭐냐.. 아이디 있으면 여기 text에 입력한 아이디를 찍어놓고 readonly -->
	                <div class="form-group">   	
	                        <label for="id">아이디 (이메일)</label>
	                        <div>
	                            <input type="text" class="form-control" name="id" id="id" 
	                            	   placeholder="가입 아이디 (이메일)를 입력하세요"
	                            	   required = "/^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)?$/i" >
	                            <!-- value="${updateid }" -->
	                        </div>
	                        <span>${msg}</span>
                    </div>
                    
                    <!-- JOIN BTN-->
                    <div class="btn_area">
                        <!-- id 변경 -->
                        <button type="submit" id="SearchBtn">검색하기</button>
                    </div>
                    
                    <!-- 계정을 찾지 못했을 떄 -->
					<c:if test="${check == 1}">
						<script>
							opener.document.findform.name.value = "";
							opener.document.findform.id.value = "";
						</script>
						<label>일치하는 정보가 존재하지 않습니다.</label>
					</c:if>

					<!-- 이름과 비밀번호가 일치하지 않을 때 -->
					<c:if test="${check == 0 }">
					<label>'${id}'로 임시 비밀번호가 발급되었습니다.</label>
						<div class="form-label-group">
							<button type="submit" id="SearchBtn" onclick="closethewindow()">닫기</button>
						</div>
					</c:if>
                </form> 
            </div>
        </div> 
    </div>
</section>
	<script>
	$("#SearchBtn").click(function(){
		
		var regExp = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i; 
		var id = $("#id").val();
		
		if($("#name").val().length ==''){
			alert("이름을 입력해주세요");
			return;
			
		} else if($("#name").val().length < 2){
			$("#msg").html("이름은 두 글자 이상입니다");
			return;
			
		} else if ($("#id").val().length ==''){
			alert("가입 아이디(이메일)를 입력하세요");
			return;
			
		} else if (id.match(regExp) == null) { 
			$("#msg").html("잘못된 이메일 형식입니다");
			return;
			
		} else {
			document.SearchForm.submit();
		}
	});
	</script>
		<script type="text/javascript">
		function closethewindow(){
		self.close();
		}
	</script>
</body>
</html>