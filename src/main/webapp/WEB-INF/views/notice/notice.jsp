<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ include file="../incloud/header.jsp" %>
<!-- 공지사항 css -->
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/notice.css">
<body>

  <div class="eventpage_area">
    <div class="event_title">
      <h3>공지사항</h3>
    </div>
    <div class="event_table">
      <table>
      	<thead>
	        <tr>
	          <th class="th_bno">글번호</th>
	          <th class="th_title">제목</th>
	          <th class="th_date">작성일자</th>
	          <th class="th_writer">작성자</th>
	          <th class="th_views">조회수</th>
	        </tr>
      	</thead>
      	<tbody>
	        <c:forEach var="vo" items="${list }" varStatus="i">
		        <tr>
		          <td>${vo.bno }</td>
		          <td class="td_title"><a href="noticeDetail?bno=${vo.bno}">${vo.title }</a></td>
		          <td><fmt:formatDate value="${vo.regdate }" pattern="yyyy년MM월dd일"/></td>
		          <td>${vo.writer }</td>
		          <td>${vo.cnt }</td>
		        </tr>
	        </c:forEach>
      	</tbody>

      </table>
    </div>

    <form>
        <div class="event_table_paging">
          <div class="button_area">
            <c:if test="${users != null }">
              <button type="button" class="writer_button button" onclick="location.href='regist'">글쓰기</button>
            </c:if>
          </div>
          <!-- freeList에 전달될 값을 hidden으로 처리 -->
          <input type="hidden" name="pageNum" value="${pageVO.cri.pageNum }">
          <input type="hidden" name="amount" value="${pageVO.cri.amount }">
          <input type="hidden" name="searchType" value="${pageVO.cri.searchType }">
          <input type="hidden" name="searchName" value="${pageVO.cri.searchName }"> 
        </div>
        <div class="event_pagenation">
          <ul>  
            <li><a href="#" data-pagenum="${pageVO.startPage-1 }">이전</a></li>
            <li><a href="#">1</a></li>
            <li><a href="#">2</a></li>
            <li><a href="#">3</a></li>
            <li><a href="#">4</a></li>
            <li><a href="#">5</a></li>
            <li><a href="#" data-pagenum="${pageVO.endPage+1 }">다음</a></li>  
          </ul>
        </div>
        (페이징의 빨간 글씨는 선택된 페이지만, 디폴트는 검은색)
    </form>
    
    <div class="search_area">
      <div class="search_inner">
        <select class="search_type">
          <option value="title">제목</option>
          <option value="content">내용</option>
          <option value="writer">작성자</option>
        </select>
        <input type="text" class="search_text" value="" placeholder="검색입력"/>
        <button type="submit" class="search_button button" value="">검색</button>
      </div>
    </div>
  </div>

<%@ include file="../incloud/footer.jsp" %>