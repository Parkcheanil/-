<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/bootstrap.css"></head>
<body>
<%@ include file="../include/adminHeader.jsp" %>
	<body>
	<div class="category_intable" style ="padding-left : 170px;  margin-top : 100px; height: 100%;width: 75%;">
		<hr><h4>주문상세</h4><hr>
		<form action = "updateUserOrder" method = "post">
			<label>주문번호</label>ㄴ
			<input class="form-control" name='oid' value ="${vo.oid }" readonly="readonly">	
		    <label>아이디</label>
            <input class="form-control" name='mid' value ="${vo.mid }" readonly="readonly">
            <label>수령인</label>
            <input class="form-control" name='oname' value = "${vo.oname }" >
            <label>연락처</label>
            <input class="form-control" name='ophone' value = "${vo.ophone }" >
            <label>우편번호</label>
            <input class="form-control" name='opost' value = "${vo.opost }" readonly="readonly" >
            <label>상품 총 금액</label>
            <input class="form-control" name='oamount' value = "${vo.oamount }" >
            <label>상품 개수</label>
            <input class="form-control" name='oproductnum' value = "${vo.oproductnum }" >
            <label>결제 수단      </label>
	        <input class="form-control" name='opayment' value = "${vo.opayment }" readonly="readonly" >   
            <label>상품 이름</label>
            <input class="form-control" name='pname' value = "${vo.pname }"  readonly="readonly">
            <br>
            
            <label>주문상태     </label>
            <select name="delivery_status" id="delivery">
			    <option value="배송준비" ${vo.delivery_status eq '배송준비중'? 'selected' :''  } >배송준비</option>
		   		<option value="배송중"  	${vo.delivery_status eq '배송중'? 'selected' :''  } >배송중</option>
			    <option value="배송완료" ${vo.delivery_status eq '배송완료'? 'selected' :''  }> 배송완료</option>
			</select>

            <br>
            <button type="button" onclick="location.href='order'">목록</button>    
            <button type="submit">변경</button>
         </form>
	</div>
</body>
</html>