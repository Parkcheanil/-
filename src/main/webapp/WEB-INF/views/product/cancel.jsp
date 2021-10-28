<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../incloud/header.jsp"%>

<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/css/petlist.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/css/cancel.css">

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
	<!-- 헤더 프로필 -->
	<div class="maincon">
		<div class="myinfo">
			<div class="cb1">
				<!-- 헤더 마이페이지 -->
				<div class="cb2">
					<a href="#" class="myinfo2">
						<div class="cb3">
							<div class="myinfo3">
								<div class="myimg-box">
									<img class="myimg" src="/resources/img/noimg.png"
										alt="마이페이지사진" sizes="auto"> <span class="myimp-sp">편집</span>
								</div>
							</div>
						</div>
						<div class="cb3-1">
							<div class="cb4">
								<span class="myinfo-name"><strong>박천일님</strong> <i
									class="fas fa-cog"></i> </span>
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
							<li class="pet-addlist">
								<button class="pet-addbtn">
									<h4>
										<div class="petname">멍멍이asdfasdfasdfasdfasdfasdfasdfasdfasdfasdf</div>
										<span class="toppetBox"> <span class="toppet">대표</span>
										</span>
									</h4>
									<div class="petinfo">
										<span class="petbirth">20.01.01</span> <span
											class="petweight">11kg</span>
									</div>
								</button>
							</li>
							<li class="pet-addlist">
								<button class="pet-addbtn">
									<h4>
										<div class="petname">멍멍이asdfasdfasdfasdfasdfasdfasdfasdfasdfasdf</div>
										<span> <span class="toppet">대표</span>
										</span>
									</h4>
									<div class="petinfo">
										<span class="petbirth">20.01.01</span> <span
											class="petweight1"> <span class="petweight">11kg</span>
										</span>
									</div>
								</button>
							</li>
							<li class="pet-addlist-in">
								<button class="pet-addbtn-in">
									<div>
										<i class="fas fa-plus-square addIcon"></i> 강아지 등록하기
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
						<h3>나의 쇼핑</h3>
					</div>
					<div class="side-1">
						<a href="#"> <span>주문 · 배송</span> <i
							class="fas fa-angle-right i1"></i>
						</a>
					</div>
					<div class="side-1">
						<a href="#"> <span>주문취소</span> <i
							class="fas fa-angle-right i2"></i>
						</a>
					</div>
					<div class="side-1">
						<a href="#"> <span>교환· 반품</span> <i
							class="fas fa-angle-right i2"></i>
						</a>
					</div>
					<div class="side-1">
						<a href="#"> <span>고객센터</span> <i
							class="fas fa-angle-right i1"></i>
						</a>
					</div>
				</div>
			</div>
			<div class="main_area">
				<h2 class="main_h2">주문취소</h2>
				<div class="main_area_none">
					<div class="main_inner_none">
						<div class="inner_none">
							<span class="cart_img"> <img
								src="/resources/img/order.png">
							</span>
							<div class="none_alert">주문취소 가능한 내역이 없습니다.</div>
						</div>
					</div>
				</div>
				<div class="inner_goods">
					<div class="goods_div">
						<div>
							<h2 class="goods_h2">물품 목록</h2>
						</div>

						<div class="goods_info">
							<img src="/resources/img/catEat01.jpg">
							<div class="info_text">
								<div class="info_name">커클랜드 시그니쳐 고양이 사료</div>
								<div class="info_number">개수</div>
							</div>
							<div class="info_count">
								<div class="count_button">-</div>
								<input type="text" class="count_text" />
								<div class="count_button">+</div>
							</div>
							<div class="info_etc">
								<button type="button" class="btn">
									<span>주문취소</span>
								</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<%@ include file="../incloud/footer.jsp"%>