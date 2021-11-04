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
                            <input type="text" class="form-control" name="id" id="id" placeholder="이메일 형식으로 입력하세요">
                            
                            <div class="input-group-addon">
                                <button type="button" class="btn btn-primary" id="userIDcheck">아이디 중복체크</button>
                            </div>
                        </div>
                        <span id=msgId></span>
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
                            <input type="number" class="form-control" id="yy" name="yy" placeholder="년(4자)" min="1921" max="2021" maxlength="4">
                            <span id="msgYY"></span>
                            	
                            <select id="mm" name="mm" class="sel"> <!-- 이거 sel없애도 되는지 확인  -->
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

							<!-- class=int 없앨 준비 -->
                            <input type="text" id="dd" name="dd" class="int" maxlength="2" placeholder="일">
                            <span id="msgDD"></span>			<!-- 생년월일을 입력해주세요 -->
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
			
			// 값이 공백이면 안 되니까 value를 얻어온다 
			var id = $("#id").val();
			if(id.length < 4){
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
				
				data : JSON.stringify({"id": id}),		
				success: function(data){
					
					if(data==0){
						// 중복없음
						$("#id").attr("readonly", true);
						$("#msgId").html("사용가능한 아이디입니다");
						// idckCheck = true;	
					}else{
						$("#msgId").html("중복된 아이디입니다");
						// idckCheck = false;	
					} 
				},  // success 종료
					
				error: function(){
					alert("서버측 에러가 발생했습니다");
				}
			}); 	// ajax 종료
		  })		// function 종료
    </script>
    
    <script>
    	// 회원가입 유효성 검증
    	$("#joinBtn").click(function() {
    		/*필수값 유효성 검사*/
    		if( !$("#id").attr("readonly")){
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
    			
    		}else if($("#name").val().length < 2){
    			alert("이름은 두 글자 이상입니다");
    			return;
    			
    		}else if($("#com").val()=="통신사"){
    			$("#msgPhone1").html("통신사 선택은 필수입니다");
    			return;
    			
    		}else if($("#phone").val().length==''){
    			$("#msgPhone2").html("전화번호 입력은 필수입니다");
    			return;
    			
    		}else if($("#addZipNum").val().length==''){
    			$("#msgAddr").html("주소를 입력해주세요");
    			return;	 
    			
    		}else if(!(1921<=$("#yy").val() && $("#yy").val()<=2021)){
    			$("#msgYY").html("정확한 년도를 입력해주세요");
    			return;	 
    		
    		}else if(1921<=$("#mm").val() ==''){
    			$("#msgMM").html("월을 선택해 주세요");
    			return;
    		
    		}else if(!(1<=$("#dd").val() && $("#dd").val()<=31)){
    			$("#msgDD").html("유효한 날짜를 선택해 주세요");
    			return;
    			
    		}else{
    			document.joinForm.submit();
    		};    		
   		});
    </script>

    <!-- 
    <script>
    		// 입력>>값<<을 변수에 저장
    		/*
    		var id = $('#id').val();					// id 입력란
    		var pw = $('#pw').val();					// 비밀번호 입력란
    		var pwCk = $('#pwCk').val();				// 비밀번호 확인 입력란
    		var name = $('#name').val();				// 이름 입력란
    		var nick = $('#nick').val();				// 닉네임 입력란
    		var com = $('#com').val();					// 통신사 입력란
    		var phone = $('#phone').val();				// 전화번호 입력란
    		var addZipNum = $('#addZipNum').val();		// 우편번호 입력란
    		var addrBasic = $('#addrBasic').val();		// 기본주소 입력란
    		var addrDetail = $('#addrDetail').val();	// 상세주소 입력란
    		var yy = $('#yy').val();					// 생년 입력란
    		var mm = $('#mm').val();					// 월 입력란
    		var dd = $('#dd').val();					// 일 입력란
    		*/
    		
    		// 아이디 중복 유효성 검사
        	// 아이디 중복 체크를 클릭했을 때 이벤트
    </script>
	
    <script>
            /* 비밀번호 유효성 검사
	         $("#joinBtn").click(function() {
	         	var pw = $('#pw').val();
	            if(pw == ""){
	                $("#msgPw").css('display','block');
	                pwCheck = false;
	            }else{
	                $("#msgPw").css('display', 'none');
	                pwCheck = true;
	            }
	         */

            /* 비밀번호 확인값 유효성 검사
            if(pwck == ""){
                $("#msgPw").css('display','block');
                pwckCheck = false;
            }else{
                $("#msgPw").css('display', 'none');
                pwckCheck = true;
            }
            */
    		
            // 비밀번호 확인 일치검사 ==> 서버요청없이 자바스크립트로만 진행
            /*
            $("#pwCk").on("propertychange change keyup paste input", function(){
            	$("#msgPw").css('display', 'none');
            	if(pw == pwCk){
            		$("#msgPw-re-1").css('display', 'block');
            		$("#msgPw-re-2").css('display', 'none');
            		pwckEqlCheck = true;
            	}else{
            		$("#msgPw-re-1").css('display', 'none');
            		$("#msgPw-re-2").css('display', 'block');
            		pwckEqlCheck = false;
            	}
            });
            */
   	</script>
   	-->
</body>
</html>