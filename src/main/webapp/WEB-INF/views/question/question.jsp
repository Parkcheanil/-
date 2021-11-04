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
      <h3>문의사항</h3>
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
        	<c:forEach var="vo"  items="${list }" varStatus="i" >
	        <tr>
	          <td>${vo.qno }</td>
	          <td class="td_title"><a href="questionDetail?qno=${vo.qno }">${vo.qtitle }</a></td>
	          <td><fmt:formatDate value="${vo.qregdate }" pattern="yyyy년MM월dd일" /></td>
	          <td>${vo.qwriter }</td>
	          <td>${vo.qcnt }</td>
	        </tr>
	        </c:forEach>
  		</tbody>

      </table>
    </div>

    <form action="question" name="pageForm">
        <div class="event_table_paging">
          <div class="button_area">
            <!--<c:if test="${users != null }">
            </c:if>-->
              <button type="button" class="writer_button button" onclick="location.href='questionRegist'">글쓰기</button>
          </div>
          <!-- freeList에 전달될 값을 hidden으로 처리 -->
          <input type="hidden" name="qpageNum" value="${pageVO.cri.qpageNum }">
          <input type="hidden" name="qamount" value="${pageVO.cri.qamount }">
          <input type="hidden" name="qsearchType" value="${pageVO.cri.qsearchType }">
          <input type="hidden" name="qsearchName" value="${pageVO.cri.qsearchName }"> 
        </div>
        <div class="event_pagenation">
          <ul>
          	<c:if test="${pageVO.qprev }">
           		<li><a href="#" data-pagenum="${pageVO.qstartPage-1 }">이전</a></li>
          	</c:if>  
            <c:forEach var="num" begin="${pageVO.qstartPage }" end="${pageVO.qendPage }" >
            	<li class="${num eq pageVO.qpageNum ? 'active' : '' }">
            		<a href="#" data-pagenum="${num }">${num }</a>
            	</li>
            </c:forEach> 
            <c:if test="${pageVO.qnext }">
            	<li><a href="#" data-pagenum="${pageVO.qendPage+1 }">다음</a></li>  
            </c:if>          
          </ul>
        </div>
        
    </form>
    
    <form action="question" method="get">
	    <div class="search_area" >
	      <div class="search_inner">
	        <select class="search_type" name="qsearchType">
	          <option value="qtitle" ${pageVO.cri.qsearchType eq 'qtitle' ? 'selected' : '' }>제목</option>
	          <option value="qcontent" ${pageVO.cri.qsearchType eq 'qcontent' ? 'selected' : '' }>내용</option>
	          <option value="qwriter" ${pageVO.cri.qsearchType eq 'qwriter' ? 'selected' : '' }>작성자</option>
	        </select>
	        <input type="text" class="search_text" name="qsearchName" value="${pageVO.cri.qsearchName }" placeholder="검색입력"/>
	        <button type="submit" class="search_button button">검색</button>
	      </div>
	    </div>
    </form>
  </div>
  <script>
  
  	var	pagination = document.querySelector(".event_pagenation");
  	
  	pagination.onclick = function(){
  		event.preventDefault(); 
  		console.log(document.pageForm.qpageNum);
  		if(event.target.tagName!='A') return;
  		
  		var qpageNum = event.target.dataset.pagenum;
  		document.pageForm.qpageNum.value=qpageNum;
  		document.pageForm.submit();
  	}
  
  </script>

<%@ include file="../incloud/footer.jsp" %>
