<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>   
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>   

	<%@ include file="../incloud/header.jsp" %>
	<!-- 상품 전체 css -->
       <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/petlist.css">
       <!-- 헤더 네비게이션 -->
        <div style="margin-top: 165px;">
            <div class="container1026">
                <div class="wrap">
                    <div class="box">
                        <p>
                            <a href="../">홈</a> > <a href="#">강아지용</a> > <a href="##">사료</a> > <a>상품이름</a>
                        </p>
                    </div>
                </div>
            </div>
            <!-- 헤더 프로필 -->
            <div class="maincon">
                <div class="myinfo">
                    <!-- 상세정보 사이드메뉴 -->
                    <div class="cb1-1">
                        <div class="cb2-2">
                            <div class="side">
                                <h3>나의 가족</h3>
                            </div>
                            <div class="side-1">
                                <a href="#" onclick="location.href='order'">
                                    <span>주문 / 배송</span>
                                    <i class="fas fa-angle-right i1"></i>
                                </a>
                            </div>
                            <div class="side-1">
                                <a href="#" onclick="location.href='cancel'">
                                    <span>주문취소</span>
                                    <i class="fas fa-angle-right i2"></i>
                                </a>
                            </div>
                            <div class="side-1" onclick="location.href='change'">
                                <a href="#">
                                    <span>교환/반품</span>
                                    <i class="fas fa-angle-right i2"></i>
                                </a>
                            </div>
                            <div class="side-1" >
                                <a href="#" onclick="location.href='../notice/question'">
                                    <span>고객센터</span>
                                    <i class="fas fa-angle-right i2"></i>
                                </a>
                            </div>
                        </div>
                    </div>
                    <!-- 추천 상품 리스트 -->
                    <div class="petcontent">
                        <main class="listMain">
                            <div>
		                       	<div>
	                                <div>
	                                    <h2>상품추천</h2>
	                                </div>
<!--                                 <div class="dropdown"> -->
<!--                                     <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown"> -->
<!--                                         대표 펫 나이별 추천상품 -->
<!--                                     </button> -->
<!--                                     <ul class="dropdown-menu"> -->
<!--                                         <li><a href="#">키덜트</a></li> -->
<!--                                         <li><a href="#">어덜트</a></li> -->
<!--                                         <li><a href="#">시니어</a></li> -->
<!--                                     </ul> -->
<!--                                 </div> -->
<!--                                 <div class="dropdown"> -->
<!--                                     <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown"> -->
<!--                                         대표 펫 몸무게별 추천상품 -->
<!--                                     </button> -->
<!--                                     <ul class="dropdown-menu"> -->
<!--                                         <li><a href="#">소형</a></li> -->
<!--                                         <li><a href="#">중형</a></li> -->
<!--                                         <li><a href="#">대형</a></li> -->
<!--                                     </ul> -->
<!--                                 </div> -->
<!-- 							</div> -->
                                <div class="recommendGrop">
                                    <div id="myCarousel" class="carousel slide" data-ride="carousel">
                                        <!-- 인터크립터 추천메뉴 슬라이드 -->
                                        <div class="carousel-inner">
                                            <div class="item active">
                                                <div class="individually" id="slideFirst">
                                                    <a href="">
                                                        <picture>
                                                            <source media="(max-width: 1199px)" srcset="">
                                                            <source media="(min-width: 1200px)" srcset="">
                                                            <img src="/resources/img/3510_originalView_01326139.jpg" alt="" sizes="auto">
                                                        </picture>
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
                                                    <a href="">
                                                        <picture>
                                                            <source media="(max-width: 1199px)" srcset="">
                                                            <source media="(min-width: 1200px)" srcset="">
                                                            <img src="/resources/img/3510_originalView_01326139.jpg" alt="" sizes="auto">
                                                        </picture>
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
                                                    <a href="">
                                                        <picture>
                                                            <source media="(max-width: 1199px)" srcset="">
                                                            <source media="(min-width: 1200px)" srcset="">
                                                            <img src="/resources/img/3510_originalView_01326139.jpg" alt="" sizes="auto">
                                                        </picture>
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
                                                    <a href="">
                                                        <picture>
                                                            <source media="(max-width: 1199px)" srcset="">
                                                            <source media="(min-width: 1200px)" srcset="">
                                                            <img src="/resources/img/3510_originalView_01326139.jpg" alt="" sizes="auto">
                                                        </picture>
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
                                                    <a href="">
                                                        <picture>
                                                            <source media="(max-width: 1199px)" srcset="">
                                                            <source media="(min-width: 1200px)" srcset="">
                                                            <img src="/resources/img/3510_originalView_01326139.jpg" alt="" sizes="auto">
                                                        </picture>
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
                                                    <a href="">
                                                        <picture>
                                                            <source media="(max-width: 1199px)" srcset="">
                                                            <source media="(min-width: 1200px)" srcset="">
                                                            <img src="/resources/img/3510_originalView_01326139.jpg" alt="" sizes="auto">
                                                        </picture>
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
                                                    <a href="">
                                                        <picture>
                                                            <source media="(max-width: 1199px)" srcset="">
                                                            <source media="(min-width: 1200px)" srcset="">
                                                            <img src="/resources/img/3510_originalView_01326139.jpg" alt="" sizes="auto">
                                                        </picture>
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
                                                    <a href="">
                                                        <picture>
                                                            <source media="(max-width: 1199px)" srcset="">
                                                            <source media="(min-width: 1200px)" srcset="">
                                                            <img src="/resources/img/3510_originalView_01326139.jpg" alt="" sizes="auto">
                                                        </picture>
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
                                                    <a href="">
                                                        <picture>
                                                            <source media="(max-width: 1199px)" srcset="">
                                                            <source media="(min-width: 1200px)" srcset="">
                                                            <img src="/resources/img/3510_originalView_01326139.jpg" alt="" sizes="auto">
                                                        </picture>
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
                                                    <a href="">
                                                        <picture>
                                                            <source media="(max-width: 1199px)" srcset="">
                                                            <source media="(min-width: 1200px)" srcset="">
                                                            <img src="/resources/img/3510_originalView_01326139.jpg" alt="" sizes="auto">
                                                        </picture>
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
                                                    <a href="">
                                                        <picture>
                                                            <source media="(max-width: 1199px)" srcset="">
                                                            <source media="(min-width: 1200px)" srcset="">
                                                            <img src="/resources/img/3510_originalView_01326139.jpg" alt="" sizes="auto">
                                                        </picture>
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
                                                    <a href="">
                                                        <picture>
                                                            <source media="(max-width: 1199px)" srcset="">
                                                            <source media="(min-width: 1200px)" srcset="">
                                                            <img src="/resources/img/3510_originalView_01326139.jpg" alt="" sizes="auto">
                                                        </picture>
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
                                                    <a href="">
                                                        <picture>
                                                            <source media="(max-width: 1199px)" srcset="">
                                                            <source media="(min-width: 1200px)" srcset="">
                                                            <img src="/resources/img/3510_originalView_01326139.jpg" alt="" sizes="auto">
                                                        </picture>
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
                                                    <a href="">
                                                        <picture>
                                                            <source media="(max-width: 1199px)" srcset="">
                                                            <source media="(min-width: 1200px)" srcset="">
                                                            <img src="/resources/img/3510_originalView_01326139.jpg" alt="" sizes="auto">
                                                        </picture>
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
                                                    <a href="">
                                                        <picture>
                                                            <source media="(max-width: 1199px)" srcset="">
                                                            <source media="(min-width: 1200px)" srcset="">
                                                            <img src="/resources/img/3510_originalView_01326139.jpg" alt="" sizes="auto">
                                                        </picture>
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
                                            <a class="nsbtn1" href="#myCarousel" data-slide="prev">
                                                <i class="fas fa-chevron-left"></i>
                                            </a>
                                            <a class="nsbtn2" href="#myCarousel" data-slide="next">
                                                <i class="fas fa-chevron-right"></i>
                                            </a>
                                        </div>
                                    </div>
                            </div>
                            </div>
                            <div class="pdt-box">
                                <div class="pdt-pdtlist">
                                    <span>
                                        <strong>89</strong>
                                        개의 상품
                                    </span>
                                    <div class="pdtlist-drop">
                                        <div class="pdtlist-drop-icon">
                                            <i class="fas fa-chevron-down"></i>
                                        </div>
                                        <h4>랭킹순</h4>
                                        <div class="pdtlist-drop-list">
                                            <ul class="pdtlist-drop-ul">
                                                <li><a href="">실적 랭킹순</a></li>
                                                <li><a href="">가격 낮은순</a></li>
                                                <li><a href="">가격 높은순</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                    <label for="">정렬</label>
                                </div>
                            </div>
                            <div class="recom-product">
                                <div class="recomList">
                                    <a href="">
                                        <picture>
                                            <source media="(max-width: 1199px)" srcset="">
                                            <source media="(min-width: 1200px)" srcset="">
                                            <img src="/resources/img/3510_originalView_01326139.jpg" alt="" sizes="auto">
                                        </picture>
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
                                    <a href="">
                                        <picture>
                                            <source media="(max-width: 1199px)" srcset="">
                                            <source media="(min-width: 1200px)" srcset="">
                                            <img src="/resources/img/3510_originalView_01326139.jpg" alt="" sizes="auto">
                                        </picture>
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
                                    <a href="">
                                        <picture>
                                            <source media="(max-width: 1199px)" srcset="">
                                            <source media="(min-width: 1200px)" srcset="">
                                            <img src="/resources/img/3510_originalView_01326139.jpg" alt="" sizes="auto">
                                        </picture>
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
                                    <a href="">
                                        <picture>
                                            <source media="(max-width: 1199px)" srcset="">
                                            <source media="(min-width: 1200px)" srcset="">
                                            <img src="/resources/img/3510_originalView_01326139.jpg" alt="" sizes="auto">
                                        </picture>
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
                                    <a href="">
                                        <picture>
                                            <source media="(max-width: 1199px)" srcset="">
                                            <source media="(min-width: 1200px)" srcset="">
                                            <img src="/resources/img/3510_originalView_01326139.jpg" alt="" sizes="auto">
                                        </picture>
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
                                    <a href="">
                                        <picture>
                                            <source media="(max-width: 1199px)" srcset="">
                                            <source media="(min-width: 1200px)" srcset="">
                                            <img src="/resources/img/3510_originalView_01326139.jpg" alt="" sizes="auto">
                                        </picture>
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
                                    <a href="">
                                        <picture>
                                            <source media="(max-width: 1199px)" srcset="">
                                            <source media="(min-width: 1200px)" srcset="">
                                            <img src="/resources/img/3510_originalView_01326139.jpg" alt="" sizes="auto">
                                        </picture>
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
    <!-- 인터크립터 속도 -->
    <script>
        $("#myCarousel").carousel({interval: 3000});
    </script>
    <%@ include file="../incloud/footer.jsp" %>
