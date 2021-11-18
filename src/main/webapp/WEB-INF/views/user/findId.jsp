<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!-- 인클루드 헤더 -->
<html>
<head>
	<meta charset="UTF-8">
	<title>ID 찾기</title>
	<script src="${pageContext.request.contextPath }/resources/js/jquery.js"></script>
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/common.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/search.css">
</head>
<body>

<!-- >>>>>>>>>>>>>>>>>>여기부터 섹션<<<<<<<<<<<<<<<<<<<<<< -->

<section>
	<!-- container -->
    <div class="container">
    <!-- wrapper -->
        <div class="wrap" style="margin: 0 auto;">
            <!-- box-->
            <div class="box">
                
                <!-- 입력폼 시작 !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! -->
                <form action="find_id" class="SearchForm" name="findform" method="post">
               	    <!-- 타이틀 박스 -->
                	<div class="titlebox">아이디 찾기</div>
                    
                    <!-- 이름 -->
                    <div class="form-group">
                        <label for="name">이름</label>
                            <input type="text" class="form-control" name="name" id="name" placeholder="이름(두 글자 이상입니다)">
                            <span id="msgName"></span>	<!-- 이름을 입력해주세요 --> 
                    </div>

                    <!-- MOBILE -->
                    <div class="form-group">
                        <label for="hp">휴대전화</label>
                        <div class="input-group phone">
                        	<!-- 휴대전화번호 정규화 아직임 -->
                            <select id="com" name="com" class="form-control phone1">
                                    <option>통신사</option>
                                    <option value="LGU+">LGU+</option>
                                    <option value="SKT">SKT</option>
                                    <option value="KT">KT</option>
                                    <option value="ACTS">알뜰폰</option>
                            </select>
                            <span id="msgPhone1"></span> <!-- 통신사를 선택해주세요 -->

                            <input type="text" class="form-control phone2" name="phone" id="phone" placeholder="전화번호 입력">
                            <span id="msgPhone2"></span>  <!-- 전화번호를 입력해주세요 -->
                        </div>
                    </div>                   

                    <!-- JOIN BTN-->
                    <div class="btn_area">
                        <!-- id 변경 -->
                        <button type="submit" id="SearchBtn" >검색하기</button>
                    </div>
                    
                   	<!-- 이름과 전화번호가 일치하지 않을 때-->
					<c:if test="${check == 1}">
						<script>
							opener.document.findform.name.value = "";
							opener.document.findform.company.value = "";
							opener.document.findform.mobile.value = "";
						</script>
						<label>일치하는 정보가 존재하지 않습니다.</label>
					</c:if>

					<!-- 이름과 비밀번호가 일치하지 않을 때 -->
					<c:if test="${check == 0 }">
					<label>찾으시는 아이디는' ${id}' 입니다.</label>
						<div class="#">
							<input type="button" value="닫기" 
								   onclick="closethewindow()"
								   id="CloseBtn">
						</div>
					</c:if>
                </form> 
            </div>
        </div> 
    </div>
</section>

	<script type="text/javascript">
		function closethewindow(){
		self.close();
		}
	</script>
	
   	<script>
	// 필수값 유효성 검사
	// 이름 두글자 이상, 통신사 선택, 전화번호 넘버 + 정규화
    </script>
</body>
</html>