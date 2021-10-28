<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../incloud/header.jsp" %>

  	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/petlist.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/border.css">
<body>
 <!-- 헤더 네비게이션 -->
        <div style="margin-top: 165px;">
            <div class="container_middle">
                <div class="myroot">
                    <div class="myroot_nav">
                        <p>
                            <a href="#">홈</a> > <a href="#">마이 페이지</a> > <a href="##">주문 · 배송</a>
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
                                    <li class="pet-addlist">
                                        <button class="pet-addbtn">
                                            <h4>
                                                <div class="petname">멍멍이asdfasdfasdfasdfasdfasdfasdfasdfasdfasdf</div>
                                                <span class="toppetBox">
                                                    <span class="toppet">대표</span>
                                                </span>
                                            </h4>
                                            <div class="petinfo">
                                                <span class="petbirth">20.01.01</span>
                                                <span class="petweight">11kg</span>
                                            </div>
                                        </button>
                                    </li>
                                    <li class="pet-addlist">
                                        <button class="pet-addbtn">
                                            <h4>
                                                <div class="petname">멍멍이asdfasdfasdfasdfasdfasdfasdfasdfasdfasdf</div>
                                                <span>
                                                    <span class="toppet">대표</span>
                                                </span>
                                            </h4>
                                            <div class="petinfo">
                                                <span class="petbirth">20.01.01</span>
                                                <span class="petweight1">
                                                    <span class="petweight">11kg</span>
                                                </span>
                                            </div>
                                        </button>
                                    </li>
                                    <li class="pet-addlist-in">
                                        <button class="pet-addbtn-in">
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
                                <h3>나의 쇼핑</h3>
                            </div>
                            <div class="side-1">
                                <a href="#">
                                    <span>주문 · 배송</span>
                                    <i class="fas fa-angle-right i1"></i>
                                </a>
                            </div>
                            <div class="side-1">
                                <a href="#">
                                    <span>주문취소</span>
                                    <i class="fas fa-angle-right i2"></i>
                                </a>
                            </div>
                            <div class="side-1">
                                <a href="#">
                                    <span>교환하기</span>
                                    <i class="fas fa-angle-right i2"></i>
                                </a>
                            </div>
                            <div class="side-1">
                                <a href="#">
                                    <span>반품하기</span>
                                    <i class="fas fa-angle-right i2"></i>
                                </a>
                            </div>
                            <div class="side-1">
                                <a href="#">
                                    <span>고객센터</span>
                                    <i class="fas fa-angle-right i1"></i>
                                </a>
                            </div>
                        </div>
                    </div>
                    <!-- 추천 상품 리스트 -->
                    <div class="container_main">
                        <div class="category"></div>
                        <div class="order_shipping">
                          <div class="main_content">
                            <h2 class="order_title">주문 · 배송</h2>
                            <div class="content_index">
                              <div class="list_root">
                                <div class="calendar">
                                  <div class="container_datetitle">
                                    <p>조회기간을 선택해 주세요</p>
                                  </div>
                                  <div class="calendar_input">
                                    <input type="text" id="datepicker1">
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>~</strong> &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
                                    <input type="text" id="datepicker2">
                                  </div>
                                  <div class="search_date">
                                    <button type="button" id="#날짜 조회 js" class="search_button">
                                      <span class="button_span">조회하기</span>
                                    </button>
                                  </div>
                                </div>
                                <div class="list_index">
                                  <div class="tit_month">
                                    <h4>2021.08</h4>
                                  </div>
                                  <div class="goods_section">
                                    <div class="goods_group">
                                      <ul class="goods_list">
                                        <li class="goods_item_list">
                                          <div class="goods_item">
                                            <a href="project_ProductDetail.html" class="goods_tumb">
                                              <img src="../../resources/img/dogEat06.jpg" alt="더독 닥터소프트 치킨 시니어 3kg" width="90" height="90">
                                            </a>
                                            <div class="goods_info">
                                              <a href="project_ProductDetail.html" class="goods">
                                                <p class="name">더독 닥터소프트 치킨 시니어 3kg</p>
                                                <ul class="pay_date">
                                                  <li class="item_price">
                                                    <span class="blind">상품금액</span>
                                                    16,900원
                                                  </li>
                                                  <li class="date">
                                                    <span class="blind">구매날짜</span>
                                                    2021.08.21
                                                  </li>
                                                </ul>
                                              </a>
                                              <span class="goods_shipping">배송완료</span>
                                              <p class="guide">
                                                &nbsp;구매가 완료되었습니다. 이용해주셔서 감사합니다.
                                                <br>
                                                <strong>반품 및 교환은 고객센터에 문의 해 주세요.</strong>
                                              </p>
                                            </div>
                                          </div>
                                          <div class="seller_item">
                                              <div class="inner">
                                                <span class="seller">홈페이지 이름</span>
                                                <span class="tel">1588-12345</span>
                                                <a href="고객센터로 이동" class="move_qna">문의하기</a>
                                              </div>
                                          </div>
                                          <div class="button_item">
                                              <div class="area_layer">
                                                  <a href="상품 상세 페이지" class="reply_sell">재구매</a>
                                              </div>
                                          </div>
                                        </li>
                                      </ul>
                                    </div>
                                  </div>
                                </div>
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                </div>
            </div>
        </div>
    </div>
    <!-- 인터크립터 속도 -->
    <script>
        $("#myCarousel").carousel({interval: 3000});
    </script>
<%@ include file="../incloud/footer.jsp" %>
    <!-- 스크립트 구간 -->
    <script>
        $(function() {
            $("#datepicker1,#datepicker2").datepicker({
              dateFormat: 'yy-mm-dd' //달력 날짜 형태
               ,showOtherMonths: true //빈 공간에 현재월의 앞뒤월의 날짜를 표시
               ,showMonthAfterYear:true // 월- 년 순서가아닌 년도 - 월 순서
               ,changeYear: true //option값 년 선택 가능
               ,changeMonth: true //option값  월 선택 가능                
               ,showOn: "both" //button:버튼을 표시하고,버튼을 눌러야만 달력 표시 ^ both:버튼을 표시하고,버튼을 누르거나 input을 클릭하면 달력 표시  
               ,buttonImage: "http://jqueryui.com/resources/demos/datepicker/images/calendar.gif" //버튼 이미지 경로
               ,buttonImageOnly: true //버튼 이미지만 깔끔하게 보이게함
               ,buttonText: "선택" //버튼 호버 텍스트              
               ,yearSuffix: "년" //달력의 년도 부분 뒤 텍스트
               ,monthNamesShort: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'] //달력의 월 부분 텍스트
               ,monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'] //달력의 월 부분 Tooltip
               ,dayNamesMin: ['일','월','화','수','목','금','토'] //달력의 요일 텍스트
               ,dayNames: ['일요일','월요일','화요일','수요일','목요일','금요일','토요일'] //달력의 요일 Tooltip
               ,minDate: "-5Y" //최소 선택일자(-1D:하루전, -1M:한달전, -1Y:일년전)
               ,maxDate: "+5y" //최대 선택일자(+1D:하루후, -1M:한달후, -1Y:일년후)  
            });                           
        });
    </script>
</body>
</html>