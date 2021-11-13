<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %> 
<%@ include file="incloud/header.jsp" %>

<!-- 메인 css -->
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/main.css">
<body>
  <div class="store_area1" >
    <h3>강아지</h3>
    <c:set var="i"/>
  	<c:forEach var="i" begin="1" end="5" step="1">
  		<c:choose>
			<c:when test="${i != 5 }">
			    <div class="store_box">
			      <div class="store_img">
			        <img onclick="javascript:location.href='product/productDetail?pID=${clist[fn:length(clist) - i].pid}'" src="/resources/img/${clist[fn:length(clist) - i].pimageaddr}" >
			      </div>
			      <div class="item_info">
			        <div class="info1"> ${clist[fn:length(clist) - i].pname }</div>
			        <div class="info3">${clist[fn:length(clist) - i].pprice }원</div>
			      </div>
			    </div>
			</c:when>
			<c:when test="${i == 5 }">
				<div class="store_box store_last">
			      <div class="store_img">
			        <img onclick="javascript:location.href='product/productDetail?pID=${clist[fn:length(clist) - i].pid}'" src="/resources/img/${clist[fn:length(clist) - i].pimageaddr}">
			      </div>
			      <div class="item_info">
			        <div class="info1">${clist[fn:length(clist) - i].pname }</div>
			        <div class="info3">${clist[fn:length(clist) - i].pprice }원</div>
			      </div>
			    </div>
			</c:when>	    
	    </c:choose>
  	</c:forEach>
  </div>
  
  <hr class="outer_hr">
  
  <div class="store_area2">
    <h3>고양이</h3>
    <c:set var="i"/>
  	<c:forEach var="i" begin="1" end="5" step="1">
  		<c:choose>
			<c:when test="${i != 5 }">
			    <div class="store_box">
			      <div class="store_img">
			        <img onclick="javascript:location.href='product/productDetail?pid=${clist[fn:length(clist) - i].pid}'" src="/resources/img/${clist[fn:length(clist) - i].pimageaddr}" >
			      </div>
			      <div class="item_info">
			        <div class="info1"> ${clist[fn:length(clist) - i].pname }</div>
			        <div class="info3">${clist[fn:length(clist) - i].pprice }원</div>
			      </div>
			    </div>
			</c:when>
			<c:when test="${i == 5 }">
				<div class="store_box store_last">
			      <div class="store_img">
			        <img onclick="javascript:location.href='product/productDetail?pid=${clist[fn:length(clist) - i].pid}'" src="/resources/img/${clist[fn:length(clist) - i].pimageaddr}">
			      </div>
			      <div class="item_info">
			        <div class="info1">${clist[fn:length(clist) - i].pname }</div>
			        <div class="info3">${clist[fn:length(clist) - i].pprice }원</div>
			      </div>
			    </div>
			</c:when>	    
	    </c:choose>
  	</c:forEach>
  </div>
  <hr class="outer_hr">

  <div class="background_area">
    <div class="other_area">
      <div class="other_inner_left">
        <div class="notice_area">
          <h3>공지사항</h3>
          <hr class="inner_hr">
          <a href="/notice/notice">더보기</a>
          <div class="notice_text">
          	<c:forEach var="nvo" items="${nlist }">
          		<div class="notice_inner" onclick="location.href='notice/noticeDetail?bno=${nvo.bno}'">${nvo.title }</div>
          	</c:forEach>
          </div>
        </div>
      </div>

      <div class="other_inner_right">
        <div class="notice_area">
          <h3>문의사항</h3>
          <hr class="inner_hr">
          <a href="/question/question">더보기</a>
          <div class="notice_text">     
          	<c:forEach var="qvo" items="${qlist }">
          		<div class="notice_inner" onclick="location.href='question/questionDetail?qno=${qvo.qno}'">${qvo.qtitle }</div>
          	</c:forEach> 
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="special_area">
    <div class="special_inner">
      <span class="first">우리들이 추구하는 <br>특별한 가치</span>
      <span>신선한 간식 & 사료 유통기한<br> 100% 책임제</span>
      <span>저녁 6시 이전 출발<br>12시 이전 주문시 당일 출발</span>
      <span>3만원 이상 구매시<br>무료 배송</span>
    </div>
  </div>

<%@ include file="incloud/footer.jsp" %>	
</body>

</html>