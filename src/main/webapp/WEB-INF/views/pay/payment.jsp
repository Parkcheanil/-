<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %> 

<%@ include file="../incloud/header.jsp" %>
<!-- 결제 css -->
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/payment.css">

<body>
    
       <!-- 헤더 네비게이션 -->
        <div style="margin-top: 165px;">
            <div class="container1026">
                <div class="wrap">
                    <div class="box">
                        <p>
                            <a href="#">홈</a> > <a href="#">강아지용</a> > <a href="##">사료</a> > <a>상품이름</a>
                        </p>
                    </div>
                </div>
            </div>
            <!-- 결제 폼 헤더 -->
            <div class="maincon">
                <div class="gr1">
                    <div>
                        <h2>주문결제</h2>
                    </div>
                    <div class="gr2">
                        <span>
                            <span>01 장바구니</span>
                        </span>
                        <span>
                            <span>
                                <i class="fas fa-greater-than"></i>
                            </span>
                            <span>02 주문결제</span>
                        </span>
                        <span>
                            <span>
                                <i class="fas fa-greater-than"></i>
                            </span>
                            <span>03 결제완료</span>
                        </span>
                    </div>
                </div>
                <!-- 배송정보 입력 폼 -->
                <div class="gr3">
                    <div class="expr">배송정보</div>
                    <div class="btn-group grbtn">
                        <button type="button" class="btn btn-primary grbtn1">최근 배송지</button>
                        <button type="button" class="btn btn-primary grbtn2">신규 배송지</button>
                       	<button type="button" class="btn btn-primary descbtn">배송지 선택</button>
                    </div>
                <form action="completion" method="post" name="complForm" id="complForm">
                    <div class="payform">
                        <div class="payform1">
                            <div  class="formLabel">
                                <label for="">받는 사람</label>
                                <div class="formInput">
                                    <input type="text" name="oname" id="receiver" placeholder="받으시는 분의 성함을 입력하세요.">
                                </div>
                            </div>
                            <div  class="formLabel">
                                <label for="">휴대전화</label>
                                <div  class="formInput">
                                    <input type="text" name="ophone" id="telNo1Third" placeholder="휴대전화 번호를 입력하세요.">
                                </div>
                            </div>
                            <div  class="formLabel">
                                <label for="">배송지 주소</label>
                                <div  class="formInput1">
                                    <input type="text" name="opost" id="zipCode" placeholder="우편번호를 입력하세요." disabled>
                                </div>
                                <button class="zipCode" type="button" onclick="goPopup()">
                                    <span>우편번호</span>
                                    <span></span>
                                </button>
                                <div>
                                    <div class="formInput2">
                                        <input type="text" name="oaddress" id="baseaadress" disabled><br>
                                    </div>
                                </div>
                                <div>
                                    <div class="formInput3">
                                        <input type="text" name="oaddress1" id="detailAddress" ><br>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="ddgropbox">
                            <div class="formLabel1">
                                <label for="">배송 요청사항</label>
                                <div class="dropdown ddgrop">
                                    <button class="btn btn-default dropdown-toggle ddbtn" type="button" data-toggle="dropdown">배송 요청 사항을 선택하세요.
                                    <span class="caret"></span></button>
                                    <ul class="dropdown-menu ddmenu">
                                        <li class="disabled"><a href="#">배송 요청 사항을 선택하세요.</a></li>
                                        <li><a href="#">배송 전 연락 바랍니다.</a></li>
                                        <li><a href="#">부재시 휴대전화로 연락주세요.</a></li>
                                        <li><a href="#">부재시 경비실에 맡겨주세요.</a></li>
                                        <li><a href="#">부재시 문앞에 놓아주세요.</a></li>
                                        <li><a href="#">직접입력</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
					
						<!-- 배송지 선택 -->
                        <div id="container2" style="display:none;">
                            <h3 class="setting_title">배송지 목록</h3>
                            <div class="desc_delivery">
                                <p class="desc">쇼핑에 사용하신 배송 지를 최대 15개까지 함께 관리 하실 수 있습니다.</p>
                                <a href="#" class="green_bg" id="deliveryInBtn">배송지 등록</a>
                            </div>
                            
                            <div class="delivery_list_area">
                                <div class="tbl_delivery_list">
                                    <div>
                                        <div class="tbldeli_tr1">
                                            <span scope="col" class="cell_delivery">배송지</span>
                                            <span scope="col" class="cell_addr">주소</span>
                                            <span scope="col" class="cell_tel">연락처</span>
                                            <span scope="col" class="cell_edit">수정/삭제</span>
                                        </div>
                                        <c:forEach items="${list }" var="list">
	                                        <button class="deliBtn" name="deliBtn">
		                                        <div class="boxline">
		                                            <div class="cell_delivery1">
		                                                <span class="nick1">${list.oplace }</span>
		                                                <span class="receive">${list.oname }</span>
		                                                <span class="mark_default">기본배송지</span>
		                                            </div>
		                                            <div>
		                                                <span class="zipcode2">${list.opost }</span>
		                                                <span class="oaddr1">${list.oaddress }<br>${list.oaddress1 }</span>
		    
		                                            </div>
		                                            <div class="cell_tel1">${list.ophone }</div>
		                                            <div class="cell_edit1">
		                                                <a href="" class="_modify" onclick="deliUpdate(${list.onum}); return false;">수정</a>
		                                                <a href="deliveryDelete?onum=${list.onum }" class="_delete">삭제</a>
		                                            </div>
		                                        </div>
	                                        </button>
                                        </c:forEach>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- 주문상품 -->
                    <div class="gr4">
                        <div class="orderTitle">
                            <div class="odtitle">주문상품</div>
                        </div>
                        <div>
                            <div class="gr5">
                                <div class="gr6">
                                    <strong>펫 월드발송 상품</strong>
                                    <div class="gr7">발송일 : 오늘</div>
                                </div>
                                <div class="crdTb">
                                    <ul class="orderTable">
                                    	<c:set var="total" value="0"/>
                                    	<c:set var="discnt" value="0"/>
                                        <c:forEach items="${info }" var="info">
	                                        <li class="odt-li1">
	                                            <div class="orderListBox">
	                                                <div class="orderBox">
	                                                    <div class="orderImgBox">
	                                                        <picture>
	                                                            <img src="/resources/img/3510_originalView_01326139.jpg" alt="" sizes="auto">
	                                                        </picture>
	                                                    </div>
	                                                </div>
	                                                <div class="ocb2">
	                                                    <div class="orderContentBox">
	                                                        <div class="ocb1">
	                                                            <h3><%-- ${info.PNAME } --%></h3>
	                                                            <div>수량 : <%-- ${info.CARTNUM } --%></div>
	                                                        </div>
	                                                        <div class="orderDtPay">
	                                                            <strong><%-- ${(info.PPRICE*info.CARTNUM) - (info.PPRICE/10*info.CARTNUM) } --%>
	                                                                <span>원</span>
	                                                            </strong>
	                                                        </div>
	                                                    </div>
	                                                </div>
	                                            </div>
	                                        </li>
<%-- 					                    <c:set var="total" value="${total + (info.PPRICE*info.CARTNUM) - (info.PPRICE/10*info.CARTNUM) }"/> --%>
<%-- 					                    <c:set var="discnt" value="${(info.PPRICE/10)*info.CARTNUM }"/> --%>
                                        </c:forEach>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- 최종 결제 금액 -->
                    <div class="payToTable">
                        <div class="pttitle">
                            <div class="pttitle1">최종 결제금액</div>
                        </div>
                        <div>
                            <div class="ptData">
                                <dl class="ptData1">
                                    <dt>총 상품 금액</dt>
                                    <dd><%-- ${total } --%>원</dd>
                                </dl>
                                <dl class="ptData1">
                                    <dt>배송비</dt>
                                    <dd>무료</dd>
                                </dl>
                                <dl class="ptData2">
                                    <dt>총 결제금액</dt>
                                    <dd><%-- ${total } --%>원</dd>
                                </dl>
                            </div>
                        </div>
                    </div>
                    <!-- 결제방법 -->
                    <div class="HowToPay">
                        <div class="htpline">
                            <div class="htptitle">결제방법</div>
                        </div>
                        <div class="radiogrop">
                            <div class="radiogrop1">
                                <div class="radio">
                                    <label>
                                        <i class="far fa-credit-card"></i>
                                        <input type="radio" name="optradio" checked>신용카드
                                    </label>
                                </div>
                                <div class="radio">
                                    <label>
                                        <i class="fas fa-wallet"></i>
                                        <input type="radio" name="optradio">실시간이체
                                    </label>
                                </div>
                                <div class="radio">
                                    <label>
                                        <i class="fas fa-mobile-alt"></i>
                                        <input type="radio" name="optradio">휴대폰결제
                                    </label>
                                </div>
                                <div class="radio">
                                    <label>
                                        <i class="fas fa-money-check-alt"></i>
                                        <input type="radio" name="optradio">무통장입금
                                    </label>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="confirmBox">
                    <div>
                        <p>위 주문 내용을 확인하였으며 결제에 동의합니다.</p>
                    </div>
                    <button class="confBtn" onclick="completion">
                        <span class="confBtn1">결제하기</span>
                        <span class="confBtn2"></span>
                    </button>
                </div>
                </form>
                
                
            </div>
        </div>
    
<script>
// 배송지 선택 클릭시
// $(function() {
// 	$(".grbtn2",".descbtn").click(function() {
// 		$(".grbtn2").removeClass("active");
// 		$(this).parent().addClass("active");
// 		$(".descbtn").removeClass("active");
// 		$(this).parent().addClass("active");
// 	});
// });

//배송지 선택 버튼 제어
$(function() {
	$(".descbtn").click(function() {
		$("#container2").show(function() {
			$(".descbtn").removeClass("active");
			$(this).parent().addClass("active");
		});
		$(".payform1").hide(function() {
			$(".grbtn2").removeClass("active");
			$(this).parent().addClass("active");	
		});
		$(".ddgropbox").hide(function() {
			$(".grbtn2").removeClass("active");
			$(this).parent().addClass("active");
		});
	});
});
$(function() {
	$(".grbtn2").click(function() {
		$("#container2").hide(function() {
			$(".descbtn").removeClass("active");
			$(this).parent().addClass("active");
		});
		$(".payform1").show(function() {
			$(".grbtn2").removeClass("active");
			$(this).parent().addClass("active");	
		});
		$(".ddgropbox").show(function() {
			$(".grbtn2").removeClass("active");
			$(this).parent().addClass("active");
		});
	});
});

//배송지 입력창
$(function(){
    $('#deliveryInBtn').click(function(){
        // ("url","창이름","옵션")
        window.open("delivery", "배송지등록", "width=700, height=820, top=100, left=400");
    });
});

//배송지 수정 창
function deliUpdate(onum){
    	event.preventDefault();
		//("url","창이름","옵션")
		//var url = 'deliveryUpdate?onum=' + $(".number").val();
		//url 에 onum을 같이 보내줘야 한다 (400에러)
        window.open("<c:url value='deliveryUpdate?onum="+onum+"'/>", "배송지등록", "width=700, height=820, top=100, left=400");
}
       
//         $(".number").each(function(index, item) {
// 			onum = {"onum":$(item).val()};
// 		});
//         $(".oplace").each(function(index, item) {
//         	oplace = {"oplace":$(item).val()};
// 		});
//         $(".cell_delivery").each(function(index, item) {
//         	oname = {"oname":$(item).val()};
// 		});
//         $(".zipcode2").each(function(index, item) {
//         	opost = {"opost":$(item).val()};
// 		});
//         $(".cell_tel").each(function(index, item) {
//         	ophone = {"ophone":$(item).val()};
// 		});
//         $(".cell_tel").each(function(index, item) {
//         	ophone = {"ophone":$(item).val()};
// 		});
//         $(".mark_default").each(function(index, item) {
//         	odefault = {"odefault":$(item).val()};
// 		});
   

//자식창에서 호출하면 키를 리턴
// key=null;
// function aaa() {
// 	return key;
// }

//배송지 입력 콜백함수
function callbackFunc(data) {
	location.href = "payment";
}

//주소지 api
function goPopup(){
	
	var pop = window.open("${pageContext.request.contextPath }/resources/popup/jusoPopup.jsp","pop","width=570,height=420, scrollbars=yes, resizable=yes"); 
	
}
	//주소정보의 연계데이터를 돌려받는 콜백함수
function jusoCallBack(roadFullAddr,roadAddrPart1,addrDetail,roadAddrPart2,engAddr, jibunAddr, zipNo, admCd, rnMgtSn, bdMgtSn,detBdNmList,bdNm,bdKdcd,siNm,sggNm,emdNm,liNm,rn,udrtYn,buldMnnm,buldSlno,mtYn,lnbrMnnm,lnbrSlno,emdNo){

	document.complForm.opost.value = zipNo;
	document.complForm.oaddress.value = roadAddrPart1;
	document.complForm.oaddress1.value = addrDetail;
}
</script>
    
<%@ include file="../incloud/footer.jsp" %>	

