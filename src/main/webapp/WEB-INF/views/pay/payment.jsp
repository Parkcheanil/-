<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<%@ include file="../incloud/header.jsp"%>
<!-- 결제 css -->

<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/payment.css">


<!-- jQuery -->
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
<!-- iamport.payment.js -->
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
 
<body>

	<!-- 헤더 네비게이션 -->
	<div style="margin-top: 165px;">
		<!--   <div class="container1026">
                <div class="wrap">
                    <div class="box">
                        <p>
                            <a href="#">홈</a> > <a href="#">강아지용</a> > <a href="##">사료</a> > <a>상품이름</a>
                        </p>
                    </div>
                </div>
            </div> -->
		<!-- 결제 폼 헤더 -->
		<div class="maincon">
			<div class="gr1">
				<div>
					<h2>주문결제</h2>
				</div>
				<div class="gr2">
					<span> <span>01 장바구니</span>
					</span> <span> <span> <i class="fas fa-greater-than"></i>
					</span> <span>02 주문결제</span>
					</span> <span> <span> <i class="fas fa-greater-than"></i>
					</span> <span>03 결제완료</span>
					</span>
				</div>
			</div>
			<!-- 배송정보 입력 폼 -->
			<form action="" id="payMentForm" name="payMentForm">
				<div class="gr3">
					<div class="expr">배송정보</div>
					<div class="btn-group grbtn">
						<button type="button" class="btn btn-primary grbtn2">배송지 주소</button>
						<button type="button" class="btn btn-primary descbtn">배송지 선택</button>
					</div>
					<div class="payform">
						<div class="payform1">
							<div class="formLabel">
								<label for="">받는 사람</label>
								<div class="formInput">
									<input type="hidden" name="onum" id="onumHidden" value="">
									<input type="hidden" name="oplace" id="addressName" value="집">
									<input type="text" name="oname" id="receiver"
										placeholder="받으시는 분의 성함을 입력하세요.">
								</div>
							</div>
							<div class="formLabel">
								<label for="">휴대전화</label>
								<div class="formInput">
									<input type="text" name="ophone" id="telNo1Third"
										placeholder="휴대전화 번호를 입력하세요.">
								</div>
							</div>
							<div class="formLabel">
								<label for="">배송지 주소</label>
								<div class="formInput1">
									<input type="text" name="opost" id="zipCode"
										placeholder="우편번호를 입력하세요." disabled>
								</div>
								<button class="zipCode" type="button" onclick="goPopup()">
									<span>우편번호</span> <span></span>
								</button>
								<div>
									<div class="formInput2">
										<input type="text" name="oaddress" id="baseaadress" disabled><br>
									</div>
								</div>
								<div>
									<div class="formInput3">
										<input type="text" name="oaddress1" id="detailAddress"><br>
									</div>
									<input type="hidden" name="odefault" id="baseAddressYn" value="0">
								</div>
							</div>
						</div>
						<div class="ddgropbox">
							<div class="formLabel1">
								<label for="deliSelect">배송 요청사항</label>
								<select class="selectpicker" name="deliSelect">
									<option class="disabled">배송 요청 사항을 선택하세요.</option>
									<option value="deli">배송 전 연락 바랍니다.</option>
									<option value="phone">부재시 휴대전화로 연락주세요.</option>
									<option value="security">부재시 경비실에 맡겨주세요.</option>
									<option value="door">부재시 문앞에 놓아주세요.</option>
								</select>
							</div>
						</div>
						<!-- 배송지 선택 -->
						<div id="container2" style="display: none;">
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
										<c:forEach var="i" begin="1" end="${list.size()}" step="1">
										<c:if test="${list[i].userid eq user.id }">
											<button class="deliBtn" name="deliBtn" value="${list[i].onum }" style="vertical-align: middle;">
												<div class="boxline">
													<div class="cell_delivery1">
														<span class="nick1">${list[i].oplace }</span> 
														<span class="receive">${list[i].oname }</span>
														<c:if test="${list[i].odefault == 1 }" var="default" scope="session">
															<span class="mark_default">기본배송지</span>
														</c:if>
													</div>
													<div>
														<span class="zipcode2">${list[i].opost }</span> 
														<span class="oaddr1">${list[i].oaddress }</span>
														<span class="oaddr2">${list[i].oaddress1 }</span>
													</div>
													<div class="cell_tel1">${list[i].ophone }</div>
													<div class="cell_edit1">
														<a href="${list[i].onum}" class="_choice">선택</a>
														<a href="" class="_modify" onclick="deliUpdate(${list[i].onum}); return false;">수정</a>
														<a href="" class="_delete" onclick="location.href='deliveryDelete?onum=${list[i].onum}'" >삭제</a>
													</div>
												</div>
											</button>
										</c:if>
										</c:forEach>
									</div>
								</div>
								<c:if test="${empty list}" var="messageBox">
									<div class="deliEmpt">
										<span>배송지 목록이 존재 하지 않습니다.</span>
									</div>
								</c:if>
							</div>
						</div>
					</div>
					<!-- 주문상품 -->
					<c:if test="${!empty clist }" var="cartList">
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
											<c:set var="total" value="0" />
											<c:set var="discnt" value="0" />
											<c:forEach items="${clist }" var="info">
												<input type="hidden" id="productID" name="poId" value="${info.PID }">
												<input type="hidden" id="UserID" name="cId" value="${info.ID }">
												<input type="hidden" name="pprice" value="${info.PPRICE }">
												<input type="hidden" name="cartnum" value="${info.CARTNUM }">
												<input type="hidden" id="cno" name="cno" value="${info.CNO }">												<li class="odt-li1">
													<div class="orderListBox">
														<div class="orderBox">
															<div class="orderImgBox">
																<picture> <img
																	src="/resources/img/${info.PIMAGEADDR }"
																	alt="" sizes="auto"> </picture>
															</div>
														</div>
														<div class="ocb2">
															<div class="orderContentBox">
																<div class="ocb1">
																	<h3>
																		${info.PNAME }
																	</h3>
																	<div>
																		수량 :
																		${info.CARTNUM }
																	</div>
																</div>
																<div class="orderDtPay">
																	<strong> 
																		<fmt:formatNumber pattern="###,###,###" value="${(info.PPRICE*info.CARTNUM) - (info.PPRICE/10*info.CARTNUM) }" />
																		<span>원</span>
																	</strong>
																</div>
															</div>
														</div>
													</div>
												</li>
												<c:set var="total" value="${total + (info.PPRICE*info.CARTNUM) - (info.PPRICE/10*info.CARTNUM) }"/>
												<c:set var="discnt" value="${(info.PPRICE/10)*info.CARTNUM }"/>
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
										<dd>
											<fmt:formatNumber pattern="###,###,###" value="${total }" /> 
											원
										</dd>
									</dl>
									<dl class="ptData1">
										<dt>배송비</dt>
										<dd>무료</dd>
									</dl>
									<dl class="ptData2">
										<dt>총 결제금액</dt>
										<dd>
											<fmt:formatNumber pattern="###,###,###" value="${total }" />
											원
										</dd>
									</dl>
								</div>
							</div>
						</div>
					</c:if>
					<c:if test="${empty clist }" var="prodPayList">
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
											<c:set var="total" value="0" />
											<c:set var="discnt" value="0" />
											<c:forEach items="${clist }" var="info">
												<input type="hidden" id="productID" name="poId" value="${info.PID }">
												<input type="hidden" id="UserID" name="cId" value="${info.ID }">
												<input type="hidden" name="pprice" value="${info.PPRICE }">
												<input type="hidden" name="cartnum" value="${info.CARTNUM }">
												<input type="hidden" id="cno" name="cno" value="${info.CNO }">	
												<li class="odt-li1">
													<div class="orderListBox">
														<div class="orderBox">
															<div class="orderImgBox">
																<picture> <img
																	src="/resources/img/${info.PIMAGEADDR }"
																	alt="" sizes="auto"> </picture>
															</div>
														</div>
														<div class="ocb2">
															<div class="orderContentBox">
																<div class="ocb1">
																	<h3>
																		${info.PNAME }
																	</h3>
																	<div>
																		수량 :
																		${info.CARTNUM }
																	</div>
																</div>
																<div class="orderDtPay">
																	<strong> 
																		<fmt:formatNumber pattern="###,###,###" value="${(info.PPRICE*info.CARTNUM) - (info.PPRICE/10*info.CARTNUM) }" />
																		<span>원</span>
																	</strong>
																</div>
															</div>
														</div>
													</div>
												</li>
												<c:set var="total" value="${total + (info.PPRICE*info.CARTNUM) - (info.PPRICE/10*info.CARTNUM) }"/>
												<c:set var="discnt" value="${(info.PPRICE/10)*info.CARTNUM }"/>
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
										<dd>
											<fmt:formatNumber pattern="###,###,###" value="${total }" /> 
											원
										</dd>
									</dl>
									<dl class="ptData1">
										<dt>배송비</dt>
										<dd>무료</dd>
									</dl>
									<dl class="ptData2">
										<dt>총 결제금액</dt>
										<dd>
											<fmt:formatNumber pattern="###,###,###" value="${total }" />
											원
										</dd>
									</dl>
								</div>
							</div>
						</div>
					</c:if>
					<!-- 결제방법 -->
					<div class="HowToPay">
						<div class="htpline">
							<div class="htptitle">결제방법</div>
						</div>
						<div class="radiogrop">
							<div class="radiogrop1">
								<div class="radio">
									<label for="card"> <i class="far fa-credit-card"></i> 
									<input type="radio" id="card" name="payType" value="card">신용카드
									</label>
								</div>
								<div class="radio">
									<label for="transfer"> <i class="fas fa-wallet"></i> 
									<input type="radio" id="transfer" name="payType" value="transfer">실시간이체
									</label>
								</div>
								<div class="radio">
									<label for="phonePay"> <i class="fas fa-mobile-alt"></i> 
									<input type="radio" id="phonePay" name="payType" value="phonePay">휴대폰결제
									</label>
								</div>
								<div class="radio">
									<label for="depositBank"> <i class="fas fa-money-check-alt"></i> 
									<input type="radio" id="depositBank" name="payType" value="depositBank">무통장입금
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
					<button class="confBtn" onclick="iamport()">
						<span class="confBtn1" >결제하기</span> <span class="confBtn2"></span>
					</button>
				</div>
			</form>
		</div>
	</div>
<%@ include file="../incloud/footer.jsp"%>

	<script type="text/javascript">
	//아임포트 api
	function iamport() {
		event.preventDefault();
		var IMP = window.IMP;
	 	IMP.init("imp98794983");
	 	IMP.request_pay({
	 	    pg : 'html5_inicis',
	 	    pay_method : 'card',
	 	    merchant_uid: new Date().getTime() + $("#productID") , // 상점에서 관리하는 주문 번호
	 	    name : $(".ocb1").html(),
	 	    amount : 100,
	 	    buyer_email : $("#UserID").val(),
	 	    buyer_name : '홍길동',
	 	    buyer_tel : $("#telNo1Third").val(),
	 	    buyer_addr : $("#baseaadress").val() + $("#detailAddress").val(),
	 	    buyer_postcode : $("#zipCode").val()
	 	}, function(rsp) {
	 		var msg = "결제가 완료되었습니다.";
	 		var result = {
 				"poId" : rsp.merchant_uid,
	    		"cno" :  $("#cno").val(),
	    		"oNum" : $("#onumHidden").val(),
	    		"poAmount" : rsp.paid_amount,
	    		"payType" : $('input[type="radio"][name="payType"]').val()
	 		}
	 		console.log(result);
	 		console.log(rsp);
	 		console.log("결제성공 " + msg);
	 		$.ajax({
				url : 'paymentForm', 
		        type :'POST',
		        data : JSON.stringify(result),
		        contentType:'application/json;charset=utf-8',
		        dataType: 'json', //서버에서 보내줄 데이터 타입
		        success: function(result){
		        	console.log(result);    	
		          if(result == true){
					 console.log("추가성공");
					 alert("결제가 완료 되었습니다.");
					 location.href = '/product/order';
		          }else{
		             console.log("Insert Fail!!!");
		          }
		        },
		        error:function(){
		          console.log("Insert ajax 통신 실패!!!");
		        }
			}) //ajax
		});
	}//pay

	//배송지 목록 존재할 경우 배송지 선택 버튼 show
	$(function() {
		if(${list.size()} > 0) {
			$("#container2").show();
			$(".payform1").hide();
			$(".ddgropbox").hide();
		}
	});

	//결제 버튼 클릭시 배송지 목록이 존재 하지 않을경우 배송지 입력폼에 작성한 내용으로 배송지번호를 paymentVO에 배송지 번호를 등록해주고
	//배송지 목록이 존재할경우에는 목록중 클릭이벤트가 발생한 목록의 벨류값을 받아 전달해 배송지번호를 결제폼에 실어서 보내주도록 한다.
	//결제 버튼 제어
	//신규배송지 작성시 배송지 목록에 추가
// 	$(document).ready(function(){
//   		$(".confBtn").click(function() {
//   			event.preventDefault();
//   			if(${list.size()} < 1) {
// 	    		var params = {
// 	    			 oplace : $("#addressName").val()
// 	   				,oname : $("#receiver").val()
// 	   				,ophone : $("#telNo1Third").val()
// 	   				,opost : $("#zipCode").val()
// 	   				,oaddress : $("#baseaadress").val()
// 	   				,oaddress1 : $("#detailAddress").val()
// 	   				,odefault : $("#baseAddressYn").val()
// 	    		}
// 	    		console.log(params);
// 		    	$.ajax({
// 		    		type: 'post',//데이터 전송 타입,
// 		    		url : 'deliveryIn',//데이터를 주고받을 파일 주소 입력,
// 		    		contentType : 'application/json; charset=UTF-8',
// 		    		data: JSON.stringify({
// 		    			"oplace" : params.oplace,
// 		    			"oname" : params.oname,
// 		    			"opost" : params.opost,
// 		    			"oaddress" : params.oaddress,
// 		    			"oaddress1" : params.oaddress1,
// 		    			"ophone" : params.ophone,
// 		    			"odefault" : params.odefault
// 		    		}),
// 		    		success: function(data){
// 		    			console.log(data);
// 		    			location.href="/pay/payment";
// 		    		},
// 		    		error:function(error){  
// 		    			console.log(error);  //에러가 났을 경우 실행시킬 코드
// 		    		}
// 		    	})
//   			} 
// 		});
// 	});
	</script>
	
<script type="text/javascript">
//배송지 선택 버튼 클릭시 정보입력 폼으로 정보 전달
//같은버튼 여러개에 같은이벤트 전부 걸기
//1.$(this)선택자를 이용 부모태그를 찾아 올라가 find함수로 필요한 값을 얻는다.
//2.신규배송지의 input태그를 얻어서 html(값)
$("._choice").click(function() {
	event.preventDefault();
	console.log($(this));
	
	var onum = $(this).parents(".deliBtn").val();
	var oplace = $(this).parents(".deliBtn").find(".nick1").html();
	var oname = $(this).parents(".deliBtn").find(".receive").html();
	var opost = $(this).parents(".deliBtn").find(".zipcode2").html();
	var oaddress1 = $(this).parents(".deliBtn").find(".oaddr1").html();
	var oaddress2 = $(this).parents(".deliBtn").find(".oaddr2").html();
	var ophone = $(this).parents(".deliBtn").find(".cell_tel1").html();
	
	$("#onumHidden").val(onum);
	$("#addressName").val(oplace);
	$("#receiver").val(oname);
	$("#zipCode").val(opost);
	$("#baseaadress").val(oaddress1);
	$("#detailAddress").val(oaddress2);
	$("#telNo1Third").val(ophone);

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


//배송지 삭제 비동기 처리
//	$("._delete").click(function() {
//		event.preventDefault();
//		var onum = "";
//		onum = $("#deliCheck").val()
//		console.log(onum);
//		$.ajax({
//			url: 'deliveryDelete?onum=' + onum,
//			type: 'get',
//			success: function(data) {
//				console.log(data);
//			},
//			error: function(error) {
//				console.log(error);
//			}
//		});
//	});
</script>

<script>
//배송지 선택 체크박스 제어
$(function() {
	$('input[type="checkbox"][name="oNum"]').click(function() {
		if($(this).prop('checked')) {
			$('input[type="checkbox"][name="oNum"]').prop('checked', false);
			$(this).prop('checked', true);
		}
	});
});


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

	document.forms.complForm.opost.value = zipNo;
	document.forms.complForm.oaddress.value = roadAddrPart1;
	document.forms.complForm.oaddress1.value = addrDetail;
}
	
	
</script>

