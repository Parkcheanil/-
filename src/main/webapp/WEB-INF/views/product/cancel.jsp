<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>   
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>   
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %> 
<%@ include file="../incloud/header.jsp" %>
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/petlist.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/cancel.css">
    
<body>
  <div class="bodybox">
        <header id="container">
            <div class="total-wrap">
                <div class="header">
                    <div class="img-header">
                        <img src="/resources/img/logoimg.png">
                    </div>
                    <div class="content-wrap">
                        <div class="header-menu">
                            <span>강아지</span>
                            <span>고양이</span>
                            <span>설문</span>
                            <span>고객센터</span>
    
                        </div>
                        <div class="users-function">
                            <span>Login</span>
                            <span>Join</span>
                            <span>Cart</span>
                        </div>
                    </div>
                </div>
            </div>
        </header>
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
								<c:if test="${list[i].userid eq user.id }">
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
                    <div class="cb1-1" style = "height: 1200px;">
                        <div class="cb2-2">
                            <div class="side">
                                <h3>나의 쇼핑</h3>
                            </div>
                            <div class="side-1">
                                <a href="order">
                                    <span>주문 · 배송</span>
                                    <i class="fas fa-angle-right i1"></i>
                                </a>
                            </div>
                            <div class="side-1">
                                <a href="cancel">
                                    <span>주문취소</span>
                                    <i class="fas fa-angle-right i2"></i>
                                </a>
                            </div>
                            <div class="side-1">
                                <a href="change">
                                    <span>교환· 반품</span>
                                    <i class="fas fa-angle-right i2"></i>
                                </a>
                            </div>
                            <div class="side-1">
                                <a href="/question/question">
                                    <span>고객센터</span>
                                    <i class="fas fa-angle-right i1"></i>
                                </a>
                            </div>
                        </div>
                          </div>
                            <c:choose>
                    <c:when test="${empty list }">
                    <div class="main_area" style="float: left;">
                        <h2 class="main_h2">주문취소</h2>
                        <div class="main_area_none">
                          <div class="main_inner_none">
                            <div class="inner_none">
                              <span class="cart_img">
                                <img src="/resources/img/order.png">
                              </span>
                              <div class="none_alert">주문취소 가능한 내역이 없습니다.</div>
                            </div>
                          </div>
                        </div>
                        </div>
                        </c:when>
                        </c:choose>
                        <c:forEach var="i" begin="0" end="${fn:length(list)}" step="1">
						<c:if test="${list[i].delivery_status == '배송준비중' }">
                        <div class="inner_goods" style="float: left; padding:15px 0 0 15px">
                          <div class="goods_div">
                            <div>
                              <h2 class="goods_h2">물품 목록</h2>
                            </div>
                            <div class="goods_info">
                              <img src="/resources/img/${list[i].pimage	 }">
                              <div class="info_text">
                                <div class="info_name">${list[i].pname }</div>
                                <div class="info_number">${list[i].oproductnum  }</div>
                              </div>
                              <div class="info_etc">
                                <button type="button" class="btn"><span>주문취소</span></button>
                              </div>
                            </div>
                            </div>
                        </div>
                      </c:if>
					</c:forEach>
                        </div>
                      </div>
    <%@ include file="../incloud/footer.jsp" %>
