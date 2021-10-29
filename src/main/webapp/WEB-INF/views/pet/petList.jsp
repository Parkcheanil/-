<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ include file="../incloud/header.jsp"%>

<!-- petList.jsp 슬라이드 그림자 효과 초기화 -->
<style>
.carousel-control.left, .carousel-control.right {
	background-image: linear-gradient(to right, rgba(0, 0, 0, 0) 0,
		rgba(0, 0, 0, 0) 100%);
}
</style>
<!-- 펫 상품 추천 css -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/css/petlist.css">
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
								<c:forEach items="${list }" var="vo">
									<li class="pet-addlist">
										<div class="pet-addbtn">
											<h4>
												<div class="petname">${vo.pname }</div>
												<span class="toppetBox"> <span class="toppet">대표</span>
												</span>
											</h4>
											<div class="petinfo">
												<span class="petbirth">${vo.pyear }년</span> <span
													class="petbirth">${vo.pmonth }월</span> <span
													class="petweight">${vo.pweight }kg</span>
											</div>
										</div>
									</li>
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
							<a href="#" onclick="location.href='petList'"> <span>상품추천</span>
								<i class="fas fa-angle-right i1"></i>
							</a>
						</div>
						<div class="side-1">
							<a href="#" onclick="location.href='petRegister'"> <span>펫
									등록하기</span> <i class="fas fa-angle-right i2"></i>
							</a>
						</div>
						<div class="side-1">
							<a href="#" onclick="location.href='petUpdate'"> <span>펫
									수정하기</span> <i class="fas fa-angle-right i2"></i>
							</a>
						</div>
						<div class="side-1">
							<a href="#" onclick="location.href='petList'"> <span>펫
									삭제하기</span> <i class="fas fa-angle-right i2"></i>
							</a>
						</div>
						<div class="side-1">
							<a href="#" onclick="location.href=''"> <span>고객센터</span> <i
								class="fas fa-angle-right i1"></i>
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
							<div class="dropdown">
								<button class="btn btn-primary dropdown-toggle catedrop"
									type="button" data-toggle="dropdown">대표 펫 나이별 추천상품</button>
								<ul class="dropdown-menu">
									<li><a href="#" onclick="location.href=''">키덜트</a></li>
									<li><a href="#" onclick="location.href=''">어덜트</a></li>
									<li><a href="#" onclick="location.href=''">시니어</a></li>
								</ul>
							</div>
							<div class="dropdown">
								<button class="btn btn-primary dropdown-toggle catedrop"
									type="button" data-toggle="dropdown">대표 펫 몸무게별 추천상품</button>
								<ul class="dropdown-menu">
									<li><a href="#" onclick="location.href=''">소형</a></li>
									<li><a href="#" onclick="location.href=''">중형</a></li>
									<li><a href="#" onclick="location.href=''">대형</a></li>
								</ul>
							</div>
							<div class="recommendGrop">
								<div id="myCarousel" class="carousel slide" data-ride="carousel">
									<!-- 인터크립터 추천메뉴 슬라이드 -->
									<div class="carousel-inner">
										<div class="item active">
											<div class="individually" id="slideFirst">
												<a href="#"
													onclick="location.href='../product/project_ProductDetail'">
													<picture>
													<source media="(max-width: 1199px)" srcset="">
													<source media="(min-width: 1200px)" srcset="">
													<img src="/resources/img/3510_originalView_01326139.jpg"
														alt="" sizes="auto"> </picture>
													<div>
														<div class="kidult">
															<span>키덜트</span>
														</div>
														<div class="pdt-cont">
															<h4>카리에스 덴탈껌 6개입</h4>
															<span>1,600원</span>
														</div>
													</div>
												</a>
											</div>
											<div class="individually">
												<a href="#"
													onclick="location.href='../product/project_ProductDetail'">
													<picture>
													<source media="(max-width: 1199px)" srcset="">
													<source media="(min-width: 1200px)" srcset="">
													<img src="/resources/img/3510_originalView_01326139.jpg"
														alt="" sizes="auto"> </picture>
													<div>
														<div class="kidult">
															<span>키덜트</span>
														</div>
														<div class="pdt-cont">
															<h4>카리에스 덴탈껌 6개입</h4>
															<span>1,600원</span>
														</div>
													</div>
												</a>
											</div>
											<div class="individually">
												<a href="#"
													onclick="location.href='../product/project_ProductDetail'">
													<picture>
													<source media="(max-width: 1199px)" srcset="">
													<source media="(min-width: 1200px)" srcset="">
													<img src="/resources/img/3510_originalView_01326139.jpg"
														alt="" sizes="auto"> </picture>
													<div>
														<div class="kidult">
															<span>키덜트</span>
														</div>
														<div class="pdt-cont">
															<h4>카리에스 덴탈껌 6개입</h4>
															<span>1,600원</span>
														</div>
													</div>
												</a>
											</div>
											<div class="individually">
												<a href="#"
													onclick="location.href='../product/project_ProductDetail'">
													<picture>
													<source media="(max-width: 1199px)" srcset="">
													<source media="(min-width: 1200px)" srcset="">
													<img src="/resources/img/3510_originalView_01326139.jpg"
														alt="" sizes="auto"> </picture>
													<div>
														<div class="kidult">
															<span>키덜트</span>
														</div>
														<div class="pdt-cont">
															<h4>카리에스 덴탈껌 6개입</h4>
															<span>1,600원</span>
														</div>
													</div>
												</a>
											</div>
											<div class="individually">
												<a href="#"
													onclick="location.href='../product/project_ProductDetail'">
													<picture>
													<source media="(max-width: 1199px)" srcset="">
													<source media="(min-width: 1200px)" srcset="">
													<img src="/resources/img/3510_originalView_01326139.jpg"
														alt="" sizes="auto"> </picture>
													<div>
														<div class="kidult">
															<span>키덜트</span>
														</div>
														<div class="pdt-cont">
															<h4>카리에스 덴탈껌 6개입</h4>
															<span>1,600원</span>
														</div>
													</div>
												</a>
											</div>
										</div>

										<div class="item">
											<div class="individually" id="slideFirst">
												<a href="#"
													onclick="location.href='../product/project_ProductDetail'">
													<picture>
													<source media="(max-width: 1199px)" srcset="">
													<source media="(min-width: 1200px)" srcset="">
													<img src="/resources/img/3510_originalView_01326139.jpg"
														alt="" sizes="auto"> </picture>
													<div>
														<div class="kidult">
															<span>키덜트</span>
														</div>
														<div class="pdt-cont">
															<h4>카리에스 덴탈껌 6개입</h4>
															<span>1,600원</span>
														</div>
													</div>
												</a>
											</div>
											<div class="individually">
												<a href="#"
													onclick="location.href='../product/project_ProductDetail'">
													<picture>
													<source media="(max-width: 1199px)" srcset="">
													<source media="(min-width: 1200px)" srcset="">
													<img src="/resources/img/3510_originalView_01326139.jpg"
														alt="" sizes="auto"> </picture>
													<div>
														<div class="kidult">
															<span>키덜트</span>
														</div>
														<div class="pdt-cont">
															<h4>카리에스 덴탈껌 6개입</h4>
															<span>1,600원</span>
														</div>
													</div>
												</a>
											</div>
											<div class="individually">
												<a href="#"
													onclick="location.href='../product/project_ProductDetail'">
													<picture>
													<source media="(max-width: 1199px)" srcset="">
													<source media="(min-width: 1200px)" srcset="">
													<img src="/resources/img/3510_originalView_01326139.jpg"
														alt="" sizes="auto"> </picture>
													<div>
														<div class="kidult">
															<span>키덜트</span>
														</div>
														<div class="pdt-cont">
															<h4>카리에스 덴탈껌 6개입</h4>
															<span>1,600원</span>
														</div>
													</div>
												</a>
											</div>
											<div class="individually">
												<a href="#"
													onclick="location.href='../product/project_ProductDetail'">
													<picture>
													<source media="(max-width: 1199px)" srcset="">
													<source media="(min-width: 1200px)" srcset="">
													<img src="/resources/img/3510_originalView_01326139.jpg"
														alt="" sizes="auto"> </picture>
													<div>
														<div class="kidult">
															<span>키덜트</span>
														</div>
														<div class="pdt-cont">
															<h4>카리에스 덴탈껌 6개입</h4>
															<span>1,600원</span>
														</div>
													</div>
												</a>
											</div>
											<div class="individually">
												<a href="#"
													onclick="location.href='../product/project_ProductDetail'">
													<picture>
													<source media="(max-width: 1199px)" srcset="">
													<source media="(min-width: 1200px)" srcset="">
													<img src="/resources/img/3510_originalView_01326139.jpg"
														alt="" sizes="auto"> </picture>
													<div>
														<div class="kidult">
															<span>키덜트</span>
														</div>
														<div class="pdt-cont">
															<h4>카리에스 덴탈껌 6개입</h4>
															<span>1,600원</span>
														</div>
													</div>
												</a>
											</div>
										</div>

										<div class="item">
											<div class="individually" id="slideFirst">
												<a href="#"
													onclick="location.href='../product/project_ProductDetail'">
													<picture>
													<source media="(max-width: 1199px)" srcset="">
													<source media="(min-width: 1200px)" srcset="">
													<img src="/resources/img/3510_originalView_01326139.jpg"
														alt="" sizes="auto"> </picture>
													<div>
														<div class="kidult">
															<span>키덜트</span>
														</div>
														<div class="pdt-cont">
															<h4>카리에스 덴탈껌 6개입</h4>
															<span>1,600원</span>
														</div>
													</div>
												</a>
											</div>
											<div class="individually">
												<a href="#"
													onclick="location.href='../product/project_ProductDetail'">
													<picture>
													<source media="(max-width: 1199px)" srcset="">
													<source media="(min-width: 1200px)" srcset="">
													<img src="/resources/img/3510_originalView_01326139.jpg"
														alt="" sizes="auto"> </picture>
													<div>
														<div class="kidult">
															<span>키덜트</span>
														</div>
														<div class="pdt-cont">
															<h4>카리에스 덴탈껌 6개입</h4>
															<span>1,600원</span>
														</div>
													</div>
												</a>
											</div>
											<div class="individually">
												<a href="#"
													onclick="location.href='../product/project_ProductDetail'">
													<picture>
													<source media="(max-width: 1199px)" srcset="">
													<source media="(min-width: 1200px)" srcset="">
													<img src="/resources/img/3510_originalView_01326139.jpg"
														alt="" sizes="auto"> </picture>
													<div>
														<div class="kidult">
															<span>키덜트</span>
														</div>
														<div class="pdt-cont">
															<h4>카리에스 덴탈껌 6개입</h4>
															<span>1,600원</span>
														</div>
													</div>
												</a>
											</div>
											<div class="individually">
												<a href="#"
													onclick="location.href='../product/project_ProductDetail'">
													<picture>
													<source media="(max-width: 1199px)" srcset="">
													<source media="(min-width: 1200px)" srcset="">
													<img src="/resources/img/3510_originalView_01326139.jpg"
														alt="" sizes="auto"> </picture>
													<div>
														<div class="kidult">
															<span>키덜트</span>
														</div>
														<div class="pdt-cont">
															<h4>카리에스 덴탈껌 6개입</h4>
															<span>1,600원</span>
														</div>
													</div>
												</a>
											</div>
											<div class="individually">
												<a href="#"
													onclick="location.href='../product/project_ProductDetail'">
													<picture>
													<source media="(max-width: 1199px)" srcset="">
													<source media="(min-width: 1200px)" srcset="">
													<img src="/resources/img/3510_originalView_01326139.jpg"
														alt="" sizes="auto"> </picture>
													<div>
														<div class="kidult">
															<span>키덜트</span>
														</div>
														<div class="pdt-cont">
															<h4>카리에스 덴탈껌 6개입</h4>
															<span>1,600원</span>
														</div>
													</div>
												</a>
											</div>
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
						<div class="recom-product">
							<div class="recomList">
								<a href="#"
									onclick="location.href='../product/project_ProductDetail'">
									<picture>
									<source media="(max-width: 1199px)" srcset="">
									<source media="(min-width: 1200px)" srcset="">
									<img src="/resources/img/3510_originalView_01326139.jpg" alt=""
										sizes="auto"> </picture>
									<div>
										<div class="kidult">
											<span>키덜트</span>
										</div>
										<div class="pdt-cont">
											<h4>카리에스 덴탈껌 6개입</h4>
											<span>1,600원</span>
										</div>
									</div>
								</a>
							</div>
							<div class="recomList">
								<a href="#"
									onclick="location.href='../product/project_ProductDetail'">
									<picture>
									<source media="(max-width: 1199px)" srcset="">
									<source media="(min-width: 1200px)" srcset="">
									<img src="/resources/img/3510_originalView_01326139.jpg" alt=""
										sizes="auto"> </picture>
									<div>
										<div class="kidult">
											<span>키덜트</span>
										</div>
										<div class="pdt-cont">
											<h4>카리에스 덴탈껌 6개입</h4>
											<span>1,600원</span>
										</div>
									</div>
								</a>
							</div>
							<div class="recomList">
								<a href="#"
									onclick="location.href='../product/project_ProductDetail'">
									<picture>
									<source media="(max-width: 1199px)" srcset="">
									<source media="(min-width: 1200px)" srcset="">
									<img src="/resources/img/3510_originalView_01326139.jpg" alt=""
										sizes="auto"> </picture>
									<div>
										<div class="kidult">
											<span>키덜트</span>
										</div>
										<div class="pdt-cont">
											<h4>카리에스 덴탈껌 6개입</h4>
											<span>1,600원</span>
										</div>
									</div>
								</a>
							</div>
							<div class="recomList">
								<a href="#"
									onclick="location.href='../product/project_ProductDetail'">
									<picture>
									<source media="(max-width: 1199px)" srcset="">
									<source media="(min-width: 1200px)" srcset="">
									<img src="/resources/img/3510_originalView_01326139.jpg" alt=""
										sizes="auto"> </picture>
									<div>
										<div class="kidult">
											<span>키덜트</span>
										</div>
										<div class="pdt-cont">
											<h4>카리에스 덴탈껌 6개입</h4>
											<span>1,600원</span>
										</div>
									</div>
								</a>
							</div>
							<div class="recomList">
								<a href="#"
									onclick="location.href='../product/project_ProductDetail'">
									<picture>
									<source media="(max-width: 1199px)" srcset="">
									<source media="(min-width: 1200px)" srcset="">
									<img src="/resources/img/3510_originalView_01326139.jpg" alt=""
										sizes="auto"> </picture>
									<div>
										<div class="kidult">
											<span>키덜트</span>
										</div>
										<div class="pdt-cont">
											<h4>카리에스 덴탈껌 6개입</h4>
											<span>1,600원</span>
										</div>
									</div>
								</a>
							</div>
							<div class="recomList">
								<a href="#"
									onclick="location.href='../product/project_ProductDetail'">
									<picture>
									<source media="(max-width: 1199px)" srcset="">
									<source media="(min-width: 1200px)" srcset="">
									<img src="/resources/img/3510_originalView_01326139.jpg" alt=""
										sizes="auto"> </picture>
									<div>
										<div class="kidult">
											<span>키덜트</span>
										</div>
										<div class="pdt-cont">
											<h4>카리에스 덴탈껌 6개입</h4>
											<span>1,600원</span>
										</div>
									</div>
								</a>
							</div>
							<div class="recomList">
								<a href="#"
									onclick="location.href='../product/project_ProductDetail'">
									<picture>
									<source media="(max-width: 1199px)" srcset="">
									<source media="(min-width: 1200px)" srcset="">
									<img src="/resources/img/3510_originalView_01326139.jpg" alt=""
										sizes="auto"> </picture>
									<div>
										<div class="kidult">
											<span>키덜트</span>
										</div>
										<div class="pdt-cont">
											<h4>카리에스 덴탈껌 6개입</h4>
											<span>1,600원</span>
										</div>
									</div>
								</a>
							</div>
						</div>
					</main>
				</div>
			</div>
		</div>
	</div>
	<%@ include file="../incloud/footer.jsp"%>

	<!-- 인터크립터 속도 -->
	<script>
		$("#myCarousel").carousel({
			interval : 3000
		});
	</script>

	<!-- 펫 프로필 출력 갯수 제한 -->
	<script type="text/javascript">
		$(document).ready(function() {
			$(".pet-addlist:gt(1)").css({"display" : "none"});
		});
	</script>