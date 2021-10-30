<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ include file="../incloud/header.jsp" %>
<!-- 펫 등록/수정 css -->
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/petinup.css">
       <!-- 헤더 네비게이션 -->
        <div style="margin-top: 165px;">
            <div class="container1026">
                <div class="wrap">
                    <div class="box">
                        <p>
                            <a href="#">홈</a> > <a href="#">강아지용</a> > <a href="#">사료</a> > <a>상품이름</a>
                        </p>
                    </div>
                </div>
            </div>
            <!-- 헤더 프로필 -->
            <div class="maincon">
                <div class="myinfo">
                    <div class="cb1">
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
                    </div>
                    <!-- 상세정보 사이드메뉴 -->
                    <div class="cb1-1">
                        <div class="cb2-2">
                            <div class="side">
                                <h3>나의 가족</h3>
                            </div>
                            <div class="side-1">
                                <a href="#" onclick="location.href='../product/productTotal'">
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
                                <a href="#" onclick="location.href='petUpdate?pfirst=${vo.pfirst}'">
                                    <span>펫 수정/삭제 하기</span>
                                    <i class="fas fa-angle-right i2"></i>
                                </a>
                            </div>
                            <div class="side-1">
                                <a href="#" onclick="location.href=''">
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
                                <form action="petUpdateForm" method="post" enctype="multipart/form-data">
                                	<input type="hidden" name="deleteFileName" value="${vo.pphoto }">
	                                <div class="pet-add">
	                                    <div class="content-icon">
	                                        <div class="col-lg-4 petInPic">
	                                            <div class="pet-add-img">
	                                                <div class="petimg-box">
                                                    	<input type="file" class="form-control" id="pPhoto" name="pphoto">
	                                                    <img class="petimg" src="${vo.pphoto }"/>
	                                                    <span>
	                                                        <i class="fas fa-camera"></i>
	                                                    </span>
	                                                </div>
	                                            </div>
	                                        </div>
	                                    </div>
	                                   <div class="pet-add-box">
	                                        <label for="pet-label">펫 이름</label>
	                                        <div>
	                                            <input type="text" name="pname" id="petName" value="${vo.pname }" 
	                                            placeholder="펫 이름을 입력하세요">
	                                        </div>
	                                    </div>
	                                    <div class="pet-add-box">
	                                        <label for="pet-label">태어난 년도</label>
	                                        <div>
	                                            <input type="text" name="pyear" id="petYear" value="${vo.pyear }" 
	                                            placeholder="태어난 년도">
	                                        </div>
	                                    </div>
	                                    <div class="pet-add-box">
	                                        <label for="pet-label">태어난 월</label>
	                                        <div>
	                                            <input type="text" name="pmonth" id="petMonth" value="${vo.pmonth }"
	                                            placeholder="태어난 월">
	                                        </div>
	                                    </div>
	                                    <div class="pet-add-box">
	                                        <label for="pet-label">몸무게(kg)</label>
	                                        <div>
	                                            <input type="text" name="pweight" id="petWeight" value="${vo.pweight }"
	                                            placeholder="펫 몸무게를 입력하세요.">
	                                        </div>
	                                    </div>
	                                    <div>
                                            <div class="checkbox">
                                            <label><input type="checkbox" id="checkbox" name="pfirst" value="${vo.pfirst }">이 아이로 활동하기</label>
                                            </div>
	                                    </div>
	                                    <div class="inbtn-area">
	                                        <button class="upbtn" type="submit">
	                                            <span class="inbtn-label">수정하기</span>
	                                        </button>
	                                        <button class="delbtn">
	                                            <span class="inbtn-back">삭제하기</span>
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
    
<script type="text/javascript">
	//확인용 메시지
	(function() {
		var msg = "${msg}";
		if(msg !== ""){
			alert(msg);
		}
	})();

	//프로필 사진입력 미리보기
	$(document).ready(function() {
		$("#pPhoto").on("change", readURL);
	});
	
	function readURL(e) {
		var files = e.target.files[0];
		
		var reader = new FileReader();
		reader.onload = function(e) {
			$(".petimg").attr("src", e.target.result);
			$("#pPhoto").css({"z-index":"-1"});
		}
		reader.readAsDataURL(files);
	}
	
	
	//펫 프로필 출력 갯수 제한
	$(document).ready(function() {
		$(".pet-addlist:gt(1)").css({
			"display" : "none"
		});
	});
	
	//체크 박스 제어
	
	if($("#checkbox").val() == 1){
		$('input:checkbox[id="checkbox"]').attr("checked", true);
	}
	
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
	console.log($("#checkbox").val());
	
// 	//value값 가져오기
//  	$('input:checkbox[id="checkbox"]').val();
//  	//체크 처리
//  	$('input:checkbox[id="checkbox"]').attr("checked", false);
//  	//체크 여부
//  	$('input:checkbox[id="checkbox"]').is(":checked") == true
</script>

<%@ include file="../incloud/footer.jsp" %>	