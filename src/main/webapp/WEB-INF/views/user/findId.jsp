<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>아이디 찾기</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/common.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/join.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/ID_search.css">
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
                     <h3>아이디 찾기</h3>
                 </div>
                 <!-- 이름 -->
                 <form class="form-signin" action="find_id" name="findform" method="post">
	                 <div>
	                     <h3 class="join_title"><label for="name">이름</label></h3>
	                     <span class="box int_name">
	                         <input type="text" id="name" class="int" maxlength="20">
	                     </span>
	                 </div>
	
	                 <!-- MOBILE -->
	                 <div>
	                     <h3 class="join_title"><label for="phoneNo">휴대전화</label></h3>
	                     <div class="phone_wrap">
	                         <!-- 통신사 -->
	                         <div class="phone_company">
	                             <span class="box">
	                                 <select id="company" class="sel">
	                                     <option>통신사</option>
	                                     <option value="LGU+">LGU+</option>
	                                     <option value="SKT">SKT</option>
	                                     <option value="KT">KT</option>
	                                     <option value="ACTS">알뜰폰</option>
	                                 </select>                            
	                             </span>
	                         </div>
	
	                         <!--전화 번호 -->
	                         <div class="phone_num">
	                             <span class="box">
	                                 <input type="tel" id="mobile" class="int" maxlength="16" placeholder="전화번호 입력">
	                             </span>
	                         </div>
	                     </div> <!-- 폰 랩 태그 -->
	                 </div> <!-- 모바일 태그 끝 -->
	                 
	                    <div>
	                        <button type="button" onclick="location.href='searchID_result'">검색하기 </button>
	                    </div>
	                    
	                    <!-- 이름과 전화번호가 일치하지 않을 때-->
						<c:if test="${check == 1}">
							<script>
								opener.document.findform.name.value = "";
								opener.document.findform.mobile.value = "";
							</script>
							<label>일치하는 정보가 존재하지 않습니다.</label>
						</c:if>
	
						<!-- 이름과 비밀번호가 일치하지 않을 때 -->
						<c:if test="${check == 0 }">
						<label>찾으시는 아이디는' ${id}' 입니다.</label>
						<div class="form-label-group">
								<input class="btn btn-lg btn-secondary btn-block text-uppercase"
									type="button" value="OK" onclick="closethewindow()">
							</div>
						</c:if>
        		</form>
	         </div>  
	     </div> 
	 </div>
	 <script type="text/javascript">
		function closethewindow(){
		self.close();
		}
	</script>
</body>
</html>

