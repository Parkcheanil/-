<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ include file="../incloud/header.jsp" %>
<!-- 펫 등록/수정 css -->
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/petinup.css">
	
       <!-- 헤더 네비게이션 -->
        <div style="margin-top: 165px;">
           <!--  <div class="container1026">
                <div class="wrap">
                    <div class="box">
                        <p>
                            <a href="#">홈</a> > <a href="#">강아지용</a> > <a href="#">사료</a> > <a>상품이름</a>
                        </p>
                    </div>
                </div>
            </div> -->
            <!-- 헤더 프로필 -->
            <div class="maincon">
                <div class="myinfo">
                    <%-- <div class="cb1">
                        <!-- 헤더 마이페이지 -->
                        <div class="cb2">
                            <a href="#" class="myinfo2" onclick="location.href='petupdate'">
                                <div class="cb3">
                                    <div class="myinfo3">
                                        <div class="myimg-box">
                                            <img class="myimg" src="/resources/img/noimg.png" alt="마이페이지사진" sizes="auto">
                                            <span class="myimp-sp">편집</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="cb3-1">
                                    <div class="cb4">
                                        <span class="myinfo-name"><strong>박천일님</strong>
                                            <i class="fas fa-cog"></i>
                                        </span>
                                        <div class="cb5">
                                            <div class="cb6">
                                                <img class="naver" src="/resources/img/naver.jpg" alt="네이버사진">
                                            </div>
                                            <div class="cb6-1">
                                                <span>asdfasdf@naver.com</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </div>
                        <!-- 헤더 펫 프로필 -->
                        <div class="cb2-1">
                            <div class="cb3-3">
                                <ul class="pet-list-grup">
                                 <c:forEach items="${list }" var="vo">
                                    <li class="pet-addlist">
                                        <div class="pet-addbtn">
                                            <h4>
                                                <div class="petname">${vo.pname }</div>
                                                <span class="toppetBox">
                                                    <span class="toppet">대표</span>
                                                </span>
                                            </h4>
                                            <div class="petinfo">
                                                <span class="petbirth">${vo.pyear }년</span>
                                                <span class="petbirth">${vo.pmonth }월</span>
                                                <span class="petweight">${vo.pweight }kg</span>
                                            </div>
                                        </div>
                                    </li>
                                </c:forEach>
                                    <li class="pet-addlist-in">
                                        <button class="pet-addbtn-in" onclick="location.href='petRegister'">
                                            <div>
                                                <i class="fas fa-plus-square addIcon"></i>
                                                강아지 등록하기
                                            </div>
                                        </button>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div> --%>
                    <!-- 상세정보 사이드메뉴 -->
                    <div class="cb1-1">
                        <div class="cb2-2">
                            <div class="side">
                                <h3>나의 가족</h3>
                            </div>
                            <div class="side-1">
                                <a href="#" onclick="location.href='../pet/petList'">
                                    <span>상품추천</span>
                                    <i class="fas fa-angle-right i1"></i>
                                </a>
                            </div>
                            <div class="side-1">
                                <a href="#" onclick="location.href='petRegister'">
                                    <span>펫 등록하기</span>
                                    <i class="fas fa-angle-right i2"></i>
                                </a>
                            </div>
                            <div class="side-1">
                                <a href="#" onclick="location.href='petInfo'">
                                    <span>펫 수정/삭제 하기</span>
                                    <i class="fas fa-angle-right i2"></i>
                                </a>
                            </div>
                            <div class="side-1">
                                <a href="#" onclick="location.href='../notice/question'">
                                    <span>고객센터</span>
                                    <i class="fas fa-angle-right i1"></i>
                                </a>
                            </div>
                        </div>
                    </div>
                    <!-- 펫등록 -->
                    <div class="col-lg-9 cb2-3">
                        <div class="contentbox">
                            <main class="main-name">
                                <h2>펫 등록</h2>
                                <form action="petRegistForm" method="post" enctype="multipart/form-data">
	                                <div class="pet-add">
	                                    <div class="content-icon">
	                                        <div class="col-lg-4 petInPic">
	                                            <div class="pet-add-img">
	                                                <div class="petimg-box">
                                               			<div class="fileDiv">
															<img id="fileImg" class="preview" src="../resources/img/noimg.png">
														</div>
														<div class="reply-content">
															<div class="reply-group">
																<div class="filebox pull-left">
				                                                	<input type="file" class="form-control" id=pPhoto name="file">
																</div>
															</div>
														</div>
	                                                	<input type="hidden" class="form-control" id=pPhoto name="file">
	                                                </div>
	                                            </div>
	                                        </div>
	                                    </div>
	                                    <div class="pet-add-box">
	                                        <label for="pet-label">펫 이름</label>
	                                        <div>
	                                            <input type="text" name="pname" id="petName" placeholder="펫 이름을 입력하세요">
	                                        </div>
	                                    </div>
	                                    <div class="pet-add-box">
	                                        <label for="pet-label">태어난 년도</label>
	                                        <div>
	                                            <input type="text" name="pyear" id="petYear" placeholder="태어난 년도">
	                                        </div>
	                                    </div>
	                                    <div class="pet-add-box">
	                                        <label for="pet-label">태어난 월</label>
	                                        <div>
	                                            <input type="text" name="pmonth" id="petMonth" placeholder="태어난 월">
	                                        </div>
	                                    </div>
	                                    <div class="pet-add-box">
	                                        <label for="pet-label">몸무게(kg)</label>
	                                        <div>
	                                            <input type="text" name="pweight" id="petWeight" placeholder="펫 몸무게를 입력하세요.">
	                                        </div>
	                                    </div>
	                                    <div>
                                            <div class="checkbox">
                                            <label><input type="checkbox" id="checkbox" name="pfirst" value="0">이 아이로 활동하기</label>
											<label>
											  <input type="checkbox" id="dogcheck" name="pkind" value="d" onclick="catdogcheck(this)">강아지
											</label>
											<label>
											  <input type="checkbox" id="catcheck" name="pkind" value="c" onclick="catdogcheck(this)">고양이
											</label>
                                            </div>
	                                    </div>
	                                    <div class="inbtn-area">
	                                        <button class="inbtn" type="submit">
	                                            <span class="inbtn-label">등록하기</span>
	                                            <span class="inbtn-back"></span>
	                                        </button>
	                                    </div>
	                                </div>
                                </form>
                            </main>
                        </div>
                    </div>
                </div>    
            </div>
        </div>
<%@ include file="../incloud/footer.jsp" %>	
<script type="text/javascript">
	//확인용 메시지
	(function() {
		var msg = "${msg}";
		if(msg !== ""){
			alert(msg);
		}
	})();

	//프로필 사진입력 미리보기
	$("#pPhoto").change(function(){
		if(this.files && this.files[0]) {
			$(".fileDiv").css("display", "block");
			var reader = new FileReader;
			reader.onload = function(data) {
				$('#fileImg').attr("src", event.target.result); 
               	console.log(event.target)
			}
			reader.readAsDataURL(this.files[0]);
		}
	});
	
	//펫 프로필 출력 갯수 제한
	$(document).ready(function() {
		$(".pet-addlist:gt(1)").css({
			"display" : "none"
		});
	});
	
	//체크 박스 제어
	$("#checkbox").click(function() {
		if($("#checkbox").is(":checked") == false){
			$('input:checkbox[id="checkbox"]').attr("checked", true);
			$("#checkbox").attr("value", "0");
			console.log($("#checkbox").val());
		} else {
			$('input:checkbox[id="checkbox"]').attr("checked", false);
			$("#checkbox").attr("value", "1");
			console.log($("#checkbox").val());
		}
	});	
	
	//강아지 고양이 선택 제어
	function catdogcheck(element) {
		const checkboxes 
			= document.getElementsByName("pkind");
		checkboxes.forEach((cb) => {
			cb.checked = false;
		})
		element.checked = true;
	}
	//강아지 고양이 벨류값 구하기
	$("#dogcheck").click(function() {
		$(this).val();
		console.log($(this).val());
	});
	$("#catcheck").click(function() {
		$(this).val();
		console.log($(this).val());
	});
	
	
	
// 	//value값 가져오기
//  	$('input:checkbox[id="checkbox"]').val();
//  	//체크 처리
//  	$('input:checkbox[id="checkbox"]').attr("checked", false);
//  	//체크 여부
//  	$('input:checkbox[id="checkbox"]').is(":checked") == true
</script>

<script>
   $(".inbtn-label").click(function() {
       var imgs = $("#pPhoto").val();
       
       //확장자체크
       var first = imgs.lastIndexOf(".");
       var last = imgs.length;
       var file  = imgs.substring(first, last).toLowerCase();
       //유효성 검증         
       if(file != '.jpg' && file != '.png' && file != '.bmp') {
          alert("jpg, png, bmp만 업로드가 가능합니다.");
          return; //함수종료
       } 
       
       //폼데이터를 생성해서 파일데이터를 저장.
       //console.log( $("#file") );
       //console.log( $("#file")[0] ); //태그
       //console.log( $("#file")[0].files[0] ); //파일데이터에 대한 정보
       
       var formData = new FormData();
       formData.append("file", $("#file")[0].files[0]); //파일데이터
       
       //폼데이터를 컨트롤러로 전송(비동기)
       $.ajax({
          url: "upload",
          type: "post",
          processData: false, //변수=값 으로 자동형변환되는 것을 막음
          contentType: false, //기본형 폼데이터형식으로 선언됨
          data: formData,
          success : function(data) {
             console.log(data);
             //성공실패 여부에 따라 처리결정.
             
             if(data == "success") {
           	  alert("정상 등록 되었습니다.");
           	  $("#file").val("");
           	  $(".fileDiv").css("display", "none");
           	  getList(true);
           	  
             } else {
           	  alert("서버상 문제가 발생했습니다. 다시 시도 하세요.");
             }
          },
          error : function(error) {
             console.log(error);
          }
       });         
    });

</script>
	