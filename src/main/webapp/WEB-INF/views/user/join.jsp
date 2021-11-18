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
                            <input type="text" class="form-control" name="id" id="id" placeholder="이메일 형식으로 입력하세요"> <!-- onchange="verifyEmail()" -->
                            <span id="emailCk_msg"></span>
                            
                            <div class="input-group-addon">
                                <button type="button" class="btn btn-primary" id="userIDcheck">아이디 중복체크</button>
                            </div>
                        </div>
                    </div>
                    
                    <!-- 비밀번호 -->
                    <div class="form-group">
                        <label for="pw">비밀번호</label>
                            <input type="password" class="form-control" name= "pw" id="pw" placeholder="비밀번호(조건기술)" maxlength="16">
                            <span id="msgPw"></span>	<!-- 비밀번호를 입력해주세요 -->
                    </div>
                    
                    <!-- 비밀번호 확인 -->
                    <div class="form-group">
                        <label for="password-confirm">비밀번호 재확인</label></h3>
                            <input type="password" class="form-control" id="pwCk" placeholder="비밀번호 재확인" maxlength="16">
                        <span id="msgPwCk"></span>		<!-- 비밀번호 확인을 입력해주세요 --> 
                    </div>
                    
                    <!-- 이름 -->
                    <div class="form-group">
                        <label for="name">이름</label>
                            <input type="text" class="form-control" name="name" id="name" placeholder="이름(두 글자 이상입니다)">
                            <span id="msgName"></span>	<!-- 이름을 입력해주세요 --> 
                    </div>

                    <!-- 닉네임 -->
                    <div class="form-group">
                            <label for="Nickname">닉네임</label>
                            <input type="text" class="form-control" name="nick" id="nick" placeholder="닉네임(조건기술)">
                            <span id="msgNick"></span>	<!-- 닉네임을 입력해주세요 --> 
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
                            <span id="msgPhone1"></span> <!-- 통신사를 선택해주세요 -->

                            <input type="text" class="form-control phone2" name="phone" id="phone" placeholder="전화번호 입력">
                            <span id="msgPhone2"></span>  <!-- 전화번호를 입력해주세요 -->
                        </div>
                    </div>

                    <!-- 주소 -->
                    <!-- 우편번호 -->
                    <div class="form-group">
                        <label for="addr-num">주소</label>
                        
                        <div class="input-group">
                            <input type="text" class="form-control" id="addZipNum" name="addZipNum" placeholder="우편번호">
                        
                            <div class="input-group-addon">
                                <button type="button" class="btn-btn-primary" id="ZipNumFind" onClick="goPopup()">주소찾기</button>
                            </div>
                        </div>
                        <span id=msgAddr></span>	<!-- 주소를 입력해주세요 -->
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
                    <!-- name를 두개줌. id랑 name 줌 -->
                    <!-- name을 년월일에 다 줘보자 -> 실패! -->
                    <!-- 나눠서 디비에도 나눠서 받기 : 디비에 추가해서 다시 테이블 만들고 vo에도 추가, sql에도 추가 -->
                    <div class="form-group" id="birth" >
                        <label for="yy">생년월일</label>
                        
                        <div id="input-group">
                            <input type="number" class="form-control" id="yy" name="yy" 
                            	   placeholder="년(4자)" min="1921" max="2021" oninput="handleOnInput(this,4)">
                            <span id="msgYY"></span>
                            
                            <select id="mm" name="mm" class="sel"> 
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
                            <span id="msgMM"></span>

                            <input type="number" id="dd" name="dd" class="int" placeholder="일" oninput="handleOnInput(this,2)">
                            <span id="msgDD"></span>
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
			document.joinForm.addZipNum.value = zipNo;			// addrZipNum->addZipNum로 바꿈
			document.joinForm.addrBasic.value = roadAddrPart1; 
			document.joinForm.addrDetail.value = addrDetail;
		}
    </script>
	
	<!-- 아이디 중복 검사 -->
    <script>
	    $("#userIDcheck").click(function(){
	    	// var emailVal = $("#id").val(); 
	    	var regExp = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i; 
			var id = $("#id").val();
			
			if (id.match(regExp) == null) { 
				$("#emailCk_msg").html("잘못된 이메일 형식입니다");
				return;
			}else if (id.match(regExp) != null) {
				$("#emailCk_msg").html("올바른 이메일 형식입니다");
		//	}else if(id.length < 4){
			
			} else if (id.length < 4){
				alert("아이디는 네 글자 이상입니다");
				return;
			}
	    	
			// 값이 공백이면 안 되니까 value를 얻어온다 
			//var id = $("#id").val();
		//	if(id.length < 4){
			//	alert("아이디는 네 글자 이상입니다");
			//	return;
		//	}
	
			$.ajax({
				type: "post", 	// 보내는 형식
				url: "idCheck",	// 보내는 주소
				contentType: "application/json; charset=UTF-8", // 보내는 데이터
				
				// VO 컬럼을 id로 바꾸고 여기 아래를 id:userId로 하면 들어가는데
				// mID 그대로 두고, "mID": userId 하면 안들어감
				// 잘 출력이랑 중복값 확인은 되는데... 이게 어떻게 되지 ㅋㅋㅋㅋㅋㅋㅋㅋㅋ
				
				// 제이슨 형식은 {키, 값} 형태를 띈다. 
				// 하지만 컴퓨터는 json 형태를 컴퓨터가 아는 문자열로 바꿔 보내야 한다
				// => JSON.stringify라는 걸 사용한다 ({ "": })
				
				data : JSON.stringify({"id": id}),		
				success: function(data){
					
					if(data==0){
						// 중복없음
						$("#id").attr("readonly", true);
						alert("사용 가능한 아이디입니다");
					}else{
						alert("중복된 아이디입니다");
					} 
				},  // success 종료
				error: function(){
					alert("서버측 에러가 발생했습니다");
				}
			}); 	// ajax 종료
		  })		// function 종료
    </script>
    
   	<script>
	// 생년월일 글자수 제한
	function handleOnInput(el, maxlength) {
	  if(el.value.length > maxlength)  {
	    el.value = el.value.substr(0, maxlength);
	  }
	};
	</script>
	
    
    <script>
    	// 회원가입 유효성 검증
    	$("#joinBtn").click(function() {
    		
    		var regPhone = /^01([0|1|6|7|8|9])-?([0-9]{3,4})-?([0-9]{4})$/;
    		var phone = $("#phone").val();
    		
    		if(!$("#id").attr("readonly")){
    			alert("아이디 중복 체크는 필수입니다");
    			return;
    		
    		}else if($("#pw").val()==''){
    			$("#msgPw").html("비밀번호는 필수입니다");
    			return;
    			
    		}else if($("#pwCk").val()==''){
    			$("#msgPwCk").html("비밀번호 확인은 필수입니다");
    			return;
    			
    		}else if($("#pw").val() != $("#pwCk").val()){
    			// 뭐냐 그... 값일치확인
    			$("#msgPwCk").html("비밀번호가 일치하지 않습니다")
    		
    		}else if($("#com").val()=="통신사"){
    			$("#msgPhone1").html("통신사 선택은 필수입니다");
    			return;
    			
    		}else if(phone.match(regPhone) == null){
    			$("#msgPhone2").html("휴대폰 번호가 올바른 형식이 아닙니다");
    			return;
    		}else if($("#phone").val().length==''){
    			$("#msgPhone2").html("전화번호 입력은 필수입니다");
    			return;
    			
    		}else if($("#addZipNum").val().length==''){
    			$("#msgAddr").html("주소를 입력해주세요");
    			return;	 

    		}else if($("#name").val().length < 2){
    			alert("이름은 두 글자 이상입니다");
    			return;
    			
    		}else{
    			// 폼 네임 joinForm (form의 액션값은 signup)
    			alert("회원가입에 성공했습니다. 로그인을 해주세요.")
    			document.joinForm.submit();
    		};    		
   		});
    </script>

</body>
</html>