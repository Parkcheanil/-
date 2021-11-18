<%@page import="com.petworld.command.ProductVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<%@ include file="../incloud/header.jsp"%>
<!-- 펫 상품 추천 css -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/css/petlist.css">

<!-- petList.jsp 슬라이드 그림자 효과 초기화 -->
<style>
.carousel-control.left, .carousel-control.right {
	background-image: linear-gradient(to right, rgba(0, 0, 0, 0) 0,
		rgba(0, 0, 0, 0) 100%);
}

.pet-addlist:hover {
	cursor: pointer;
}
</style>

<body>
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
						<a href="#" class="myinfo2" onclick="location.href='petUpdate'">
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
									<span class="myinfo-name"><strong>${user.name }</strong> <i
										class="fas fa-cog"></i> </span>
									<div class="cb5">
										<div class="cb6">
											<img class="naver" src="/resources/img/naver.jpg" alt="네이버사진">
										</div>
										<div class="cb6-1">
											<span>${user.id }</span>
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
								<c:forEach var="i" begin="1" end="${list.size()}" step="1">
								<c:if test="${list[i].userid eq userid }">
									<li class="pet-addlist">
										<div class="pet-addbtn">
											<h4>
												<div class="petname">${list[i].pname }</div>
												<c:if test="${list[i].pfirst == 1 }" var="pfirst" scope="session">
												<span class="toppetBox"> <span class="toppet">대표</span>
												</span>
												</c:if>
											</h4>
											<div class="petinfo">
												<span class="petbirth">${list[i].pyear }년</span> <span
													class="petbirth">${list[i].pmonth }월</span> <span
													class="petweight">${list[i].pweight }kg</span>
											</div>
										</div>
									</li>
								</c:if>
								</c:forEach>
								<li class="pet-addlist-in">
									<button class="pet-addbtn-in"
										onclick="location.href='petRegister'">
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
							<span>펫	등록하기</span> 
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
							<a href="#" onclick="location.href='../question/question'"> 
							<span>고객센터</span> 
							<i class="fas fa-angle-right i1"></i>
							</a>
						</div>
					</div>
				</div>
				<!-- 추천 상품 리스트 -->
				<div class="petcontent">
					<main class="listMain">
						<div>
							<div>
								<h2>상품추천</h2>
							</div>
							<div class="search-wrap" >
	                        <select class="form-control search-select" name="pAge" style="width:130px">                            
	                        	<option value="d" >강아지 용</option>
	                        	<option value="7up" >7세 이상 상품</option>
	                        	<option value="7down"  >7세 이하 상품</option>
	                        </select>
	                        <select class="form-control search-select" name="pAge" style="width:130px">                            
	                        	<option value="c" >고양이 용</option>
	                        	<option value="7up" >7세 이상 상품</option>
	                        	<option value="7down"  >7세 이하 상품</option>
	                        </select>
		                    </div>
							<div class="recommendGrop">
								<div id="myCarousel" class="carousel slide" data-ride="carousel">
									<!-- 인터크립터 추천메뉴 슬라이드 -->
									<div class="carousel-inner">
										<div class="item active">
											<c:forEach var="i" begin="0" end="${fn:length(productlist1) - 1}" step="1">
												<div class="individually" id="slideFirst">
													<a onclick="location.href='/product/productDetail?pID=${productlist1[i].pid}'">
														<picture>
														<img src="/resources/img/${productlist1[i].pimageaddr }"
															alt="" sizes="auto"> </picture>
														<div>
															<div class="kidult">
																<span>키덜트</span>
															</div>
															<div class="pdt-cont">
																<h4>${productlist1[i].pname }</h4>
																<span><fmt:formatNumber pattern="###,###,###" value="${productlist1[i].pprice }" />원</span>
															</div>
														</div>
													</a>
												</div>
											</c:forEach>
										</div>
										<div class="item">
											<c:forEach var="i" begin="0" end="${fn:length(productlist2) - 1}" step="1">
												<div class="individually" id="slideFirst">
													<a onclick="location.href='/product/productDetail?pID=${productlist2[i].pid}'">
														<picture>
														<img src="/resources/img/${productlist2[i].pimageaddr }"
															alt="" sizes="auto"> </picture>
														<div>
															<div class="kidult">
																<span>키덜트</span>
															</div>
															<div class="pdt-cont">
																<h4>${productlist2[i].pname }</h4>
																<span><fmt:formatNumber pattern="###,###,###" value="${productlist2[i].pprice }" />원</span>
															</div>
														</div>
													</a>
												</div>
											</c:forEach>
										</div>
									</div>
									<div class="nextSlide">
										<a class="nsbtn1" href="#myCarousel" data-slide="prev"> <i
											class="fas fa-chevron-left"></i>
										</a> <a class="nsbtn2" href="#myCarousel" data-slide="next"> <i
											class="fas fa-chevron-right"></i>
										</a>
									</div>
								</div>
							</div>
						</div>
						<div class="pdt-box">
							<div class="pdt-pdtlist">
								<span> <strong>89</strong> 개의 상품
								</span>
								<div class="pdtlist-drop">
									<div class="pdtlist-drop-icon">
										<i class="fas fa-chevron-down"></i>
									</div>
									<h4>랭킹순</h4>
									<div class="pdtlist-drop-list">
										<ul class="pdtlist-drop-ul">
											<li><a href="#" onclick="location.href=''">실적 랭킹순</a></li>
											<li><a href="#" onclick="location.href=''">가격 낮은순</a></li>
											<li><a href="#" onclick="location.href=''">가격 높은순</a></li>
										</ul>
									</div>
								</div>
								<label for="">정렬</label>
							</div>
						</div>
						<a id="move_top_btn" href="#">
						<i class="fas fa-chevron-up"></i></a>
						<div class="recom-product">
							<c:forEach var="i" begin="0" end="${fn:length(productlist1) - 1}" step="1">
								<div class="recomList">
									<a onclick="location.href='/product/productDetail?pID=${productlist1[i].pid}'">
										<picture>
										<img src="/resources/img/${productlist1[i].pimageaddr }" alt=""
											sizes="auto"> </picture>
										<div>
											<div class="kidult">
												<span>키덜트</span>
											</div>
											<div class="pdt-cont">
												<h4>${productlist1[i].pname }</h4>
												<span><fmt:formatNumber pattern="###,###,###" value="${productlist1[i].pprice }" />원</span>
											</div>
										</div>
									</a>
								</div>
							</c:forEach>
							<c:forEach var="i" begin="0" end="${fn:length(productlist2) - 1}" step="1">
								<div class="recomList">
									<a onclick="location.href='/product/productDetail?pID=${productlist2[i].pid}'">
										<picture>
										<img src="/resources/img/${productlist2[i].pimageaddr }" alt=""
											sizes="auto"> </picture>
										<div>
											<div class="kidult">
												<span>키덜트</span>
											</div>
											<div class="pdt-cont">
												<h4>${productlist2[i].pname }</h4>
												<span><fmt:formatNumber pattern="###,###,###" value="${productlist2[i].pprice }" />원</span>
											</div>
										</div>
									</a>
								</div>
							</c:forEach>
						</div>
					</main>
				</div>
			</div>
		</div>
	</div>
	<%@ include file="../incloud/footer.jsp"%>


	<c:if test="${!empty msg }">
		<script type="text/javascript">
		$(function() {
			var isMsg = true;
			
			if(isMsg) {
				alert("${msg}")
				isMsg = false;
			}
		});
		</script>
	</c:if>	

	<!-- 인터크립터 속도 -->
	<script>
		$("#myCarousel").carousel({
			interval : 3000
		});
	</script>

	<!-- 펫 프로필 출력 갯수 제한 -->
	<script type="text/javascript">
		$(function() {
			$(".pet-addlist:gt(1)").css({"display" : "none"});
		});
	</script>
	<script>
	    $(function() {
	        $(window).scroll(function() {
	            if ($(this).scrollTop() > 400) {
	                $('#move_top_btn').fadeIn();
	            } else {
	                $('#move_top_btn').fadeOut();
	            }
	        });
	        
	        $("#move_top_btn").click(function() {
	            $('html, body').animate({
	                scrollTop : 0
	            }, 400);
	            return false;
	        });
	    });
	</script>
