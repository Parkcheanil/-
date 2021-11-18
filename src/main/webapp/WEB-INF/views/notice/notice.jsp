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

    <form action="notice" name="pageForm">
        <div class="event_table_paging">
          <div class="button_area">
			<c:if test="${user.id eq 'admin@admin.com'}">
               <button type="button" class="writer_button button" onclick="location.href='noticeRegist'">글쓰기</button>
            </c:if>            
          </div>
          <!-- freeList에 전달될 값을 hidden으로 처리 -->
          <input type="hidden" name="npageNum" value="${pageVO.cri.npageNum }">
          <input type="hidden" name="namount" value="${pageVO.cri.namount }">
          <input type="hidden" name="nsearchType" value="${pageVO.cri.nsearchType }">
          <input type="hidden" name="nsearchName" value="${pageVO.cri.nsearchName }"> 
        </div>
        <div class="event_pagenation">
          <ul>
          	<c:if test="${pageVO.nprev }">
            	<li><a href="#" data-pagenum="${pageVO.nstartPage-1 }">이전</a></li>
          	</c:if>
          	<c:forEach var="num" begin="${pageVO.nstartPage }" end="${pageVO.nendPage }">
            	<li class="${num eq pageVO.npageNum ? 'active' : '' }">
            		<a href="#" data-pagenum="${num }">${num }</a>
            	</li>
          	</c:forEach>
          	<c:if test="${pageVO.nnext }">
            	<li><a href="#" data-pagenum="${pageVO.nendPage+1 }">다음</a></li>  
          	</c:if>
          </ul>
        </div>
        (페이징의 빨간 글씨는 선택된 페이지만, 디폴트는 검은색)
    </form>
    
    <form action="notice" method="get">
	    <div class="search_area">
	      <div class="search_inner">
	        <select class="search_type" name="nsearchType">
	          <option value="title" ${pageVO.cri.nsearchType eq 'title' ? 'selected' : ''}>제목</option>
	          <option value="content" ${pageVO.cri.nsearchType eq 'content' ? 'selected' : '' }>내용</option>
	          <option value="writer" ${pageVO.cri.nsearchType eq 'writer' ? 'selected' : '' }>작성자</option>
	        </select>
	        <input type="text" class="search_text" name="nsearchName" value="${pageVO.cri.nsearchName }" placeholder="검색입력"/>
	        <button type="submit" class="search_button button">검색</button>
	      </div>
	    </div>
    </form>
  </div>
  <script>
  
  	var pagination = document.querySelector(".event_pagenation");
  	
  	pagination.onclick = function(){
  		event.preventDefault();
  		if(event.target.tagName!='A') return;
  		
  		var npageNum = event.target.dataset.pagenum;
  		document.pageForm.npageNum.value=npageNum;
  		document.pageForm.submit();
  	}
  </script>

<%@ include file="../incloud/footer.jsp" %>