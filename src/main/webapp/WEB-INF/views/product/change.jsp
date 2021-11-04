<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../incloud/header.jsp" %>
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/petlist.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/border.css">
    
<body>
 <div class="main_area">
    <h2>교환하기</h2>
    <div class="main_area_none">
      <div class="main_inner_none">
        <div class="inner_none">
          <span class="cart_img">
            <img src="/resources/img/order.png">
          </span>
          <div class="none_alert">교환 가능한 내역이 없습니다.</div>
        </div>
      </div>
    </div>
    
  </div>
  <div class="inner_goods">
    <div class="goods_div">
      <div>
        <h2>물품 목록</h2>
      </div>
      
      <div class="goods_info">
        <img src="/resources/img/catEat01.jpg">
        <div class="info_text">
          <div class="info_name">커클랜드 시그니쳐 고양이 사료</div>
          <div class="info_number">개수</div>
        </div>
        <div class="info_count">
          <div class="count_button">-</div>
            <input type="text" class="count_text"/>
            <div class="count_button">+</div>
          </div>
        <div class="info_etc">
          <button type="button" class="btn"><span>교환신청</span></button>
        </div>
      </div>
    </div>
  </div>
    <%@ include file="../incloud/footer.jsp" %>