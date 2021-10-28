<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
        <tr>
          <th class="th_bno">글번호</th>
          <th class="th_title">제목</th>
          <th class="th_date">작성일자</th>
          <th class="th_writer">작성자</th>
          <th class="th_views">조회수</th>
        </tr>
        <tr>
          <td>1</td>
          <td class="td_title">ㅋㅋ</td>
          <td>2021.10.22</td>
          <td>지태훈</td>
          <td>1</td>
        </tr>
        <tr>
          <td>2</td>
          <td class="td_title">ㅋㅋ2</td>
          <td>2021.10.22</td>
          <td>지태훈2</td>
          <td>2</td>
        </tr>
        <tr>
          <td>2</td>
          <td class="td_title">ㅋㅋ2</td>
          <td>2021.10.22</td>
          <td>지태훈2</td>
          <td>2</td>
        </tr>

      </table>
    </div>

    <form>
        <div class="event_table_paging">
          <div class="button_area">
            <c:if test="${users != null }">
              <button type="button" class="writer_button button" onclick="location.href='regist.html'">글쓰기</button>
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
