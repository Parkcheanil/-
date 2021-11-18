<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ include file="../include/adminHeader.jsp" %>
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/bootstrap.css">
	<div class="item_table text-center">
	
		<hr><h4>상품</h4><hr>
		<br>
     <form action="productManagementBoard">
    	 <div class="search_area">
          	<div class="listOrder">
	          <select class="form-control search-select" style="width:75px;" onchange="handleChange(this)">                            
		       <option value="10" ${pageVO.amount eq 10 ? 'selected' : '' } >10</option>
		       <option value="20" ${pageVO.amount eq 20 ? 'selected' : '' }>20</option>
		       <option value="30"${pageVO.amount eq 30 ? 'selected' : '' } >30</option>
		     </select>&nbsp;개씩 보기
		     </div>
		     <div class="searchProduct">
            <select class="form-control search-select" name="searchType">
              <!-- <option value="pcnum" ${pageVO.cri.searchType eq 'cCode' ? 'selected' : '' }>카테고리</option> -->
              <option value="pid" ${pageVO.cri.searchType eq 'pid' ? 'selected' : '' }>상품코드</option>
              <option value="pname" ${pageVO.cri.searchType eq 'pname' ? 'selected' : '' }>상품명</option>
             </select>
             <input type="text" class="form-control search-input" name="searchName" value="${pageVO.cri.searchName }">
             <button type="submit" class="btn btn-info search-btn" >검색</button>
             <input type="hidden" name="pageNum" value="1">
             <input type="hidden" name="amount" value="${pageVO.cri.amount }">
            </div>
           </div>
       </form>
     	 <br><br>
    	<table id="item" class="table table-striped table-bordered " style="width:100%">
        <thead>
            <tr>
              <!-- <th>카테고리번호</th>	 -->
              <th>상품ID</th>
              <th class="board-title">상품명</th>
              <th>연령</th>
              <th>가격</th>
              <th>수량</th>
              <th>상품정보</th>
              <th>상품썸네일</th>
            </tr>
        </thead>
        <tbody>
        	<c:forEach var="vo" items="${list}">
        		<tr>
        			
					<td>${vo.pid}</td>
	                <td><a href="productModify?pid=${vo.pid }">${vo.pname}</a></td>
	                <td>${vo.petage }</td>
	                <td>${vo.pprice}</td>
	                <td>${vo.pstock}</td>
	                <td>${vo.pdetail }</td>
	            	<td><img src="../display/${vo.fileloca }/${vo.filename}"></td>
                </tr>
			</c:forEach>
        </tbody>
	    </table>
	    <div class="text-end">
             <button type="button" class="btn_primary" id="insert_btn" onclick="location.href='productRegist'">등록</button>
             <!-- <button type="button" class="btn_primary" id="category_btn" onclick="cate_window()">카테고리</button>  -->
            </div>
	   <form action="productManagementBoard" name="pageForm">
             <ul class="pagination justify-content-center">
             <c:if test="${pageVO.prev }">
                 <li class="page-item"><a href="#" class="pageLink" data-pagenum="${pageVO.startPage-1}">&laquo;</a></li>
               </c:if>
                           
            <c:forEach var="num" begin="${pageVO.startPage }" end="${pageVO.endPage}" >
                 <li  class="page-item ${num eq pageVO.pageNum ? 'active' : '' }">
                   <a href="#" class="pageLink" data-pagenum="${num }">${num }</a></li>
               </c:forEach>

               <c:if test="${pageVO.next }">
                <li class="page-item"><a class="pageLink" href="#" data-pagenum="${pageVO.endPage+1}">&raquo;</a></li>
               </c:if>
               </ul>
               <input type = "hidden" name = "pageNum" value = "${pageVO.cri.pageNum }">
	           <input type = "hidden" name = "amount" value = "${pageVO.cri.amount }">
	           <input type = "hidden" name = "searchType" value = "${pageVO.cri.searchType }">
	           <input type = "hidden" name = "searchName" value = "${pageVO.cri.searchName }">
             </form>
     </div>

    <script>
    //데이터변경함수(매개변수로 this 전달)
    function handleChange(data){
    		var searchN = '${pageVO.cri.searchName}'
    		var searchT = '${pageVO.cri.searchType}'
    		location.href = "productManagementBoard?searchName=" + searchN +"&" + "searchType=" + searchT + "&pageNum=1&amount="+ data.value;
    	}
    
    //페이지네이션 a태그에 동일한 이벤트 거는 방법
    var pagination = document.querySelector(".pagination");
	
	pagination.onclick = function(){ //함수를 onclick속성에 대입
		event.preventDefault(); //a의 고유 이벤트 제거[ul태그 포함]
		if(event.target.tagName != 'A') return; //a태그가 아니라면 종료
		
		//폼태그는 name속성.name속성으로 input을 선택할 수 있습니다.
		var pageNum = event.target.dataset.pagenum;
		document.pageForm.pageNum.value = pageNum
		
		//폼서브밋
		document.pageForm.submit();
	
    }
    </script>
            
</body>
</html>