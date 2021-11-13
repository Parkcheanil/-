<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>   
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>   
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %> 
	<%@ include file="../incloud/header.jsp" %>
	<!-- 상품 전체 css -->
       <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/petlist.css">
       <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/productStyle.css">
       <!-- 헤더 네비게이션 -->
        <div style="margin-top: 165px;">
            <div class="container1026">
                <div class="wrap">
                    <div class="box">
                        <p>
                            <a href="../">홈</a> > <a href="productCatTotal">고양이용</a>
                        </p>
                    </div>
                </div>
            </div>
            <!-- 헤더 프로필 -->
            <div class="maincon">
                <div class="myinfo">
                    <!-- 상세정보 사이드메뉴 -->
                    <div class="container-list">
                   		<div class="wrap2">
                			<div class="container2">
               			         <ul class="category">
                            				<li class="category1">
                               						<div><span>카테고리</span></div>
					                               		<ul class="product-list">
						                                    <li class="list_category">
						                                        <a href="#" onclick="clickHandle()">고양이용</a>
						                                        <ul class="item-list">
						                                            <li><a href="#">사료</a>
						                                                <ul class="cat_food">
						                                                    <li><a href="#">건식사료</a></li>
						                                                    <li><a href="#">습식사료</a></li>
						                                                </ul>
						                                            </li>
						                                            <li><a href="#">간식</a>
						                                                <ul class="cat_snack">
						                                                    <li><a href="#">스틱</a></li>
						                                                    <li><a href="#">캔</a></li>
						                                                </ul>
						                                            </li>
						                                            <li><a href="##">장난감</a>
						                                                <ul class="cat_toy">
						                                                    <li><a href="#">낚시대</a></li>
						                                                    <li><a href="###">스크래치</a></li>
						                                                </ul>
						                                            </li>
						                                            <li><a href="###">화장실&미용용품</a>
						                                                <ul class="cat_beauty_toliet">
						                                                    <li><a href="#">모래</a></li>
						                                                    <li><a href="#">화장실</a></li>
						                                                    <li><a href="###">샴푸</a></li>
						                                                </ul>
						                                            </li>
						                                            <li><a href="#####">그 외 물품</a>
						                                                <ul class="cat_others">
						                                                    <li><a href="#">식기류</a></li>
						                                                    <li><a href="###">캣타워</a></li>
						                                                </ul>
						                                            </li>
						                                        </ul>
						                                    </li>
						                              </ul>
                                				</li>
                                			</ul>
                                		</div>
                                	</div>
                                </div>
                    <!-- 추천 상품 리스트 -->
                    <div class="petcontent" style="float: right;">
                        <main class="listMain">
                            <div>
		                       	<div>
	                                <div>
	                                    <h2>상품추천</h2>
	                                </div>
                                <div class="recommendGrop">
                                    <div id="myCarousel" class="carousel slide" data-ride="carousel">
                                        <!-- 인터크립터 추천메뉴 슬라이드 -->
                                        <div class="carousel-inner">
                                            <div class="item active">
                                          <!-- 반복 - 추천 상품 -->
                                           <c:forEach var="i" begin="0" end="${fn:length(list2) - 1}" step="1">
                                            	
                                                <div class="individually" id="slideFirst">
                                                    <a onclick="location.href='productDetail?pID=${list2[i].pid}'">
                                                        <picture>
                                                            <source media="(max-width: 1199px)" srcset="">
                                                            <source media="(min-width: 1200px)" srcset="">
                                                            <img src="/resources/img/${list2[i].pimageaddr }" alt="" sizes="auto">
                                                        </picture>
                                                        <div>
                                                            <div class="kidult">
                                                                <span>키덜트</span>
                                                            </div>
                                                            <div class="pdt-cont">
                                                                <h4>${list2[i].pname }</h4>
                                                                <span>
                                                                	<fmt:formatNumber pattern="###,###,###" value="${list2[i].pprice}"/>원
                                                                </span>
                                                            </div>
                                                        </div>
                                                    </a>
                                                </div>
                                            </c:forEach>
                           		 		</div>
                            		</div>
                            	</div>
                            <div class="pdt-box">
                                <div class="pdt-pdtlist">
                                    <span>
                                        <strong>89</strong> 개의 상품
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
                            <c:forEach var="i" begin="0" end="${fn:length(list2) - 1}" step="1">
                                <div class="recomList">
                                    <a href="">
                                        <picture>
                                            <source media="(max-width: 1199px)" srcset="">
                                            <source media="(min-width: 1200px)" srcset="">
                                            <img src="/resources/img/${list2[i].pimageaddr }" alt="" sizes="auto">
                                        </picture>
                                        <div>
                                            <div class="kidult">
                                                <span>키덜트</span>
                                            </div>
                                            <div class="pdt-cont">
                                                <h4>${list2[i].pname }</h4>
                                                <span>
                                                	<fmt:formatNumber pattern="###,###,###" value="${list2[i].pprice}"/>원
                                                </span>
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
    <script>
        //메뉴클릭옵션
        function clickHandle() {
            event.preventDefault();
            
            let list = document.querySelectorAll(".item-list");
            for(let a of list) {
                if(a == event.currentTarget.nextElementSibling) continue;
                a.classList.remove("on");
            }
            event.target.nextElementSibling.classList.toggle("on");
        }
    </script>
    <%@ include file="../incloud/footer.jsp" %>