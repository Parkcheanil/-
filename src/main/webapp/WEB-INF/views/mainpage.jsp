<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ include file="incloud/header.jsp" %>

<!-- 메인 css -->
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/main.css">
<body>
  <div class="store_area1">
    <h3>강아지</h3>
    <div class="store_box" onclick="location.href=''">
      <div class="store_img">
        <img src="/resources/img/dogEat01.jpg" >
      </div>
      <div class="item_info">
        <div class="info1">도비 스페셜</div>
        <div class="info2">중.대형견용입니다</div>
        <div class="info3">30000원</div>
      </div>
    </div>

    <div class="store_box" onclick="location.href=''">
      <div class="store_img">
        <img src="/resources/img/dogEat02.jpg">
      </div>
      <div class="item_info">
        <div class="info1">펫다움</div>
        <div class="info2">생후 2개월 이상 전 연령용입니다</div>
        <div class="info3">35000원</div>
      </div>
    </div>

    <div class="store_box" onclick="location.href=''">
      <div class="store_img">
        <img src="/resources/img/dogEat03.jpg">
      </div>
      <div class="item_info">
        <div class="info1">ToPet(투 펫)</div>
        <div class="info2">치킨&야채맛 전 연령용입니다</div>
        <div class="info3">38000원</div>
      </div>
    </div>

    <div class="store_box" onclick="location.href='productDetail?pid=${vo.pID}'">
      <div class="store_img">
        <img src="/resources/img/dogEat04.jpg">
      </div>
      <div class="item_info">
        <div class="info1">Prime Balance
          (프라임 밸런스)</div>
        <div class="info2">치킨맛 성견용입니다</div>
        <div class="info3">38700원</div>
      </div>
    </div>

    <div class="store_box store_last" onclick="location.href=''">
      <div class="store_img">
        <img src="/resources/img/dogEat05.jpg">
      </div>
      <div class="item_info">
        <div class="info1">DOBY(도비 진)</div>
        <div class="info2">전 견종, 성견용입니다</div>
        <div class="info3">28500원</div>
      </div>
    </div>

    <!-- <div>
<button type="button">왼쪽버튼</button>
</div> -->
  </div>
  <hr class="outer_hr">

  <div class="store_area2">
    <h3>고양이</h3>
    <div class="store_box" onclick="location.href=''">
      <div class="store_img">
        <img src="/resources/img/catEat01.jpg">
      </div>
      <div class="item_info">
        <div class="info1">커클랜드 시그니쳐 고양이 사료</div>
        <div class="info2">슈퍼 프리미엄</div>
        <div class="info3">31000원</div>
      </div>
    </div>

    <div class="store_box" onclick="location.href=''">
      <div class="store_img">
        <img src="/resources/img/catEat02.jpg">
      </div>
      <div class="item_info">
        <div class="info1">프로랑 야옹이</div>
        <div class="info2">전 연령용</div>
        <div class="info3">29000원</div>
      </div>
    </div>

    <div class="store_box" onclick="location.href=''">
      <div class="store_img">
        <img src="/resources/img/catEat03.jpg">
      </div>
      <div class="item_info">
        <div class="info1">캣츠온 천사용</div>
        <div class="info2">동물성 단백질만을 사용</div>
        <div class="info3">38000원</div>
      </div>
    </div>

    <div class="store_box" onclick="location.href=''">
      <div class="store_img">
        <img src="/resources/img/catEat04.jpg">
      </div>
      <div class="item_info">
        <div class="info1">프로베스트캣</div>
        <div class="info2">헤어볼 제거</div>
        <div class="info3">32000원</div>
      </div>
    </div>

    <div class="store_box store_last" onclick="location.href=''">
      <div class="store_img">
        <img src="/resources/img/catEat05.jpg">
      </div>
      <div class="item_info">
        <div class="info1">뉴 웨이브 홀리스틱</div>
        <div class="info2">Salmon & Whole Grains</div>
        <div class="info3">34500원</div>
      </div>
    </div>
  </div>
  <hr class="outer_hr">

  <div class="background_area">
    <div class="other_area">
      <div class="other_inner_left">
        <div class="notice_area">
          <h3>공지사항</h3>
          <hr class="inner_hr">
          <a href="/controller/notice/notice">더보기</a>
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
          <a href="/controller/question/question">더보기</a>
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