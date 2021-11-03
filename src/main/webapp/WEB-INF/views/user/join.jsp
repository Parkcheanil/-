<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!-- 인클루드 헤더 -->
<html>
<head>
	<meta charset="UTF-8">
	<title>회원가입</title>
	<script src="${pageContext.request.contextPath }/resources/js/jquery.js"></script>

	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/common.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/join.css">
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
                <!-- 로고 -->
                <div class="logo">
                    <img src="${pageContext.request.contextPath }/resources/img/noimg.png">
                </div>
                <!-- 타이틀 박스 -->
                <div class="titlebox">회원가입</div>
                
                
                <!-- 입력폼 시작 !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! -->
                <form action="signUp" name="joinForm" method="post">
                    <!--사용자클래스선언-->
                    <div class="form-group">
                    <!-- ID -->
                        <label for="id">아이디 (이메일)</label>
                        <div class="input-group">
                            <input type="text" class="form-control" name="userId" id="userId" placeholder="이메일 형식으로 입력하세요">
                            
                            <div class="input-group-addon">
                                <button type="button" class="btn btn-primary" id="userIDcheck">아이디 중복체크</button>
                            </div>
                        </div>
                        <!-- 자바스크립트에서 추가 -->
                        <span id=msgId></span>
                    </div>
                    
                    <!-- 비밀번호 -->
                    <div class="form-group">
                        <label for="pw">비밀번호</label>
                            <input type="password" class="form-control" name= "pw" id="pw" placeholder="비밀번호" maxlength="16">
                            <!-- 자바스크립트에서 추가 -->
                            <span id="msgPw"></span>
                    </div>
                    
                    <!-- 비밀번호 확인 -->
                    <div class="form-group">
                        <label for="password-confirm">비밀번호 재확인</label></h3>
                            <input type="password" class="form-control" name="pwConfirm" id="pwConfirm" placeholder="비밀번호 재확인" maxlength="16">
                        <!-- 자바스크립트에서 추가 --> 
                        <span id="msgPw-c"></span> 
                    </div>
                    
                    <!-- 이름 -->
                    <div class="form-group">
                        <label for="name">이름</label>
                            <input type="text" class="form-control" name="name" id="name" placeholder="이름">
                            <span id="msgName"></span> 
                    </div>

                    <!-- 닉네임 -->
                    <div class="form-group">
                            <label for="Nickname">닉네임</label>
                            <input type="text" class="form-control" name="nick" id="nick" placeholder="닉네임">
                            <span id="msgNick"></span> 
                    </div>

                    <!-- MOBILE -->
                    <div class="form-group">
                        <label for="hp">휴대전화</label>
                        <div class="input-group phone">
                        	
                            <select id="com" name="com" class="form-control phone1">
                                    <option>통신사</option>
                                    <option value="LGU+">LGU+</option>
                                    <option value="SKT">SKT</option>
                                    <option value="KT">KT</option>
                                    <option value="ACTS">알뜰폰</option>
                            </select>

                            <input type="text" class="form-control phone2" name="phone" id="phone" placeholder="전화번호 입력">
                            <span id="msgPhone"></span>
                        </div>
                    </div>

                    <!-- 주소 -->
                    <!-- 우편번호 -->
                    <div class="form-group">
                        <label for="addr-num">주소</label>
                        
                        <div class="input-group">
                            <input type="text" class="form-control" id="addrZipNum" name="addrZipNum"  placeholder="우편번호" readonly>
                        
                            <div class="input-group-addon">
                                <button type="button" class="btn-btn-primary" id="ZipNumFind" onClick="goPopup()">주소찾기</button>
                            </div>
                        
                        </div>
                        <!-- 자바스크립트에서 추가 -->
                        <span id=msgAddr></span>
                    </div>
                    
                    <!-- 기본주소 -->
                    <div class="form-group">
                            <input type="text" class="form-control" id="addrBasic" name="addrBasic" placeholder="기본주소">
                    </div>

                    <!-- 상세주소 -->
                    <div class="form-group" >
                            <input type="text" class="form-control" id="addrDetail" name="addrDetail" placeholder="상세주소">
                    </div>                    

                    <!-- 생년월일에도 같은 구조 적용 -->
                    <!-- BIRTH -->
                    <div class="form-group" name="birth" name="birth">
                        <label for="yy">생년월일</label>
                        <div id="input-group">
                            <input type="text" class="form-control" id="yy" name="yy" maxlength="4" placeholder="년(4자)">
                            <select id="mm" class="sel">
                                <option>월</option>
                                <option value="01">1</option>
                                <option value="02">2</option>
                                <option value="03">3</option>
                                <option value="04">4</option>
                                <option value="05">5</option>
                                <option value="06">6</option>
                                <option value="07">7</option>
                                <option value="08">8</option>
                                <option value="09">9</option>                                    
                                <option value="10">10</option>
                                <option value="11">11</option>
                                <option value="12">12</option>
                            </select>

                            <input type="text" id="dd" class="int" maxlength="2" placeholder="일">
                        </div>
                    </div>

                    <!-- JOIN BTN-->
                    <div class="btn_area">
                        <!-- id 변경 -->
                        <button type="button" id="joinBtn">가입하기</button>
                    </div>
                </form> 
            </div>
        </div> 
    </div>
</section>
    
    <script>
    	// 팝업 띄우기 함수 -> 위에서 버튼이랑 연결 
    	function goPopup(){
    		
    		var pop 
    		= window.open("${pageContext.request.contextPath }/resources/popup/jusoPopup.jsp","pop","width=570, height=420, scrollbars=yes, resizable=yes"); 
    	}
    	
    	// 주소 정보의 연계데이터를 돌려받는 콜백함수
    	function jusoCallBack(roadFullAddr,roadAddrPart1,addrDetail,roadAddrPart2,engAddr, jibunAddr, zipNo, admCd, rnMgtSn, bdMgtSn,detBdNmList,bdNm,bdKdcd,siNm,sggNm,emdNm,liNm,rn,udrtYn,buldMnnm,buldSlno,mtYn,lnbrMnnm,lnbrSlno, emdNo){
			// console.log(roadAddrPart1, addrDetail, zipNo);
			document.joinForm.addrZipNum.value = zipNo;
			document.joinForm.addrBasic.value = roadAddrPart1;
			document.joinForm.addrDetail.value = addrDetail;
}
    </script>
    
    <script>
    	// 아이디 중복 체크를 클릭했을 때 이벤트
    	$("#userIDcheck").click(function(){
    		
    		// 값이 공백이면 안 되니까 value를 얻어온다 
    		var userId = $("#userId").val();
    		if(userId.length < 4){
    			alert("아이디는 네 글자 이상입니다");
    			return;
    		}

    		
    		$.ajax({
    			type: "post", 	// 보내는 형식
    			url: "idCheck",	// 보내는 주소
    			contentType: "application/json; charset=UTF-8", // 보내는 데이터
    			
				// VO 컬럼을 id로 바꾸고 여기 아래를 id:userId로 하면 들어가는데
				// mID 그대로 두고, "mID": userId 하면 안들어감
				// 잘 출력이랑 중복값 확인은 되는데... 이게 어떻게 되지 ㅋㅋㅋㅋㅋㅋㅋㅋㅋ
				
    			data : JSON.stringify({"userId": userId}),		
    			success: function(data){
    				
    				if(data==0){
    					// 화면 공간 때문에 안 나타남. 개발자도구에서는 변경확인됨
    					// 중복없음
    					$("#userId").attr("readonly", true);
    					$("#msgId").html("사용가능한 아이디입니다");
    				}else{
    				$("#msgId").html("중복된 아이디입니다");
    				}
    				
    			},
    				
    			error: function(){
    				alert("서버측 에러가 발생했습니다");
    			}
    		});
    	})
    </script>
    
    <script>
    	// 회원가입 유효성 검증
    	$("#joinBtn").click(function() {
    		// 아이디는 중복체크, 비밀번호 필수, 이름 필수 ...
    		if( !$("#userId").attr("readonly")){
    			alert("아이디 중복 체크는 필수입니다");
    			return;
    		}else if($("#pw").value()==''){
    			alert("비밀번호는 필수입니다");
    			return;
    		}else if($("#name").val().length < 2){
    			alert("이름은 두 글자 이상입니다");
    			return;
    		}else if($("#nick").val().length < 2){
    			alert("닉네임은 두 글자 이상입니다");
    			return;
    		}else{
    			document.joinForm.submit();
    		};
    	});
   </script>
    
</body>
</html>