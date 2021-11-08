<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>비밀번호 찾기</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/common.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/PW_search.css">
	<style>
		:root { -
			-input-padding-x: 1.5rem; -
			-input-padding-y: .75rem;
		}
		
		body {
			background-color: white;
		}
		
		.card-signin {
			border: 0;
			border-radius: 1rem;
			box-shadow: 0 0.5rem 1rem 0 rgba(0, 0, 0, 0.1);
			overflow: hidden;
		}
		
		.card-signin .card-title {
			margin-bottom: 2rem;
			font-weight: 300;
			font-size: 1.5rem;
		}
		
		.card-signin .card-body {
			padding: 2rem;
		}
		
		.form-signin {
			width: 100%;
		}
		
		.form-signin .btn {
			font-size: 80%;
			border-radius: 5rem;
			letter-spacing: .1rem;
			font-weight: bold;
			padding: 1rem;
			transition: all 0.2s;
		}
		
		.form-label-group {
			position: relative;
			margin-bottom: 1rem;
		}
		
		.form-label-group input {
			height: auto;
			border-radius: 2rem;
		}
		
		.form-label-group>input, .form-label-group>label {
			padding: var(- -input-padding-y) var(- -input-padding-x);
		}
		
		.form-label-group>label {
			position: absolute;
			top: 0;
			left: 0;
			display: inline_block;
			width: 100%;
			margin-bottom: 0;
			/* Override default `<label>` margin */
			line-height: 1.5;
			color: #495057;
			border: 1px solid transparent;
			border-radius: .25rem;
			transition: all .1s ease-in-out;
		}
		
		.form-label-group input::-webkit-input-placeholder {
			color: transparent;
		}
		
		.form-label-group input:-ms-input-placeholder {
			color: transparent;
		}
		
		.form-label-group input::-ms-input-placeholder {
			color: transparent;
		}
		
		.form-label-group input::-moz-placeholder {
			color: transparent;
		}
		
		.form-label-group input::placeholder {
			color: transparent;
		}
		
		.form-label-group input:not(:placeholder-shown) {
			padding-top: calc(var(- -input-padding-y)+ var(- -input-padding-y)* (2/3));
			padding-bottom: calc(var(- -input-padding-y)/3);
		}
		
		.form-label-group input:not(:placeholder-shown) ~label {
			padding-top: calc(var(- -input-padding-y)/3);
			padding-bottom: calc(var(- -input-padding-y)/3);
			font-size: 12px;
			color: #777;
		}
	</style>
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
                
				<form class="form-signin" method="post" action="find_password" name="findform">
	                <div class="to_login">
	                
	                	<!-- 
		                <button type="button" id="movetologin" onclick="location.href='searchPW_result'">
		                  	가입한 이메일로 인증 번호 보내기
		                </button>
		                -->
		                    
						<div class="form-label-group">
							<input type="text" id="id" name="id" class="form-control"/>
							<label for="id">아이디</label>
						</div>
				
						<div class="form-label-group">
							<input type="text" id="name" name="name" class="form-control"/>
							<label for="name">이름</label>
						</div>
				
						<div class="form-label-group">
							<input type="text" id="phone" name="phone" class="form-control"/>
							<label for="phone">전화번호</label>
						</div>
		
						<div class="form-label-group">
							<input type="submit" value="확인">
						</div>
						
						<!-- 정보가 일치하지 않을 때-->
						<c:if test="${check == 1}">
							<script>
								opener.document.findform.id.value = "";
								opener.document.findform.name.value = "";
								opener.document.findform.phone.value = "";
							</script>
							<label>일치하는 정보가 존재하지 않습니다.</label>
						</c:if>
		
						<!-- 이름과 비밀번호가 일치하지 않을 때 -->
						<c:if test="${check == 0 }">
							<div>
								<label>비밀번호를 변경해주세요.</label>
							</div>
							
							<div>
								<input type="hidden" id="id" name="updateid" value="${updateid }">
								<input type="password" id="password" name="pw" class="form-control"/>
								<label for="password">password</label>
							</div>
							
							<div>
								<input type="password" id="confirmpassword" name="confirmpw" class="form-control"/>
								<label for="confirmpassword">confirm password</label>
							</div>
							
							<div class="form-label-group">
								<input class="btn btn-lg btn-secondary btn-block text-uppercase"
										type="button" value="update password" onclick="updatePassword()">
							</div>
						</c:if>
					</div> 	<!-- to_login -->
				</form>
				
            </div>  
        </div> 
    </div>
    
		<script type="text/javascript">
		function updatePassword(){
			
			if(document.findform.pw.value==""){
				alert("비밀번호를 입력해주세요.");
				document.findform.pw.focus();
			
			} else if(document.findform.pw.value != document.findform.confirmpw.value){
				alert("비밀번호가 일치하지 않습니다.");
				document.findform.confirmpw.focus();
			
			} else {
				document.findform.action="update_password";
				document.findform.submit();
			}
		}
	</script>
</body>
</html>

