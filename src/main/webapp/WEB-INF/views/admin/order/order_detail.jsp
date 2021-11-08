<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Hello, World</title>
   <!-- include -->
    <%@ include file="../include/adminHeader.jsp" %>
</head>
<body>
   <body>
   <div class="category_intable" style ="padding-left : 170px; border : 3px solid red; margin-top : 100px">
      <hr><h4>주문상세</h4><hr>
      <form action = "updateUser" method = "post">
         <label>고유번호</label>
         <input class="form-control" name='oid' value ="${vo.oid }" readonly="readonly">   
         <br>         
          <label>아이디</label>
            <input class="form-control" name='mid' value ="${vo.mid }">
          <br>
            <label>수령인</label>
            <input class="form-control" name='oname' value = "${vo.oname }">
         <br>
            <label>연락처</label>
            <input class="form-control" name='ophone' value = "${vo.ophone }" >
            <br>
            <label>우편번호</label>
            <input class="form-control" name='opost' value = "${vo.opost }" >
            <br>
            <label>상품 총 금액</label>
            <input class="form-control" name='oamount' value = "${vo.oamount }" >
            <br>
            <label>상품 개수</label>
            <input class="form-control" name='oproductnum' value = "${vo.oproductnum }" >
            <br>
            <label>결제 수단(box로 만들기)</label>
            <input class="form-control" name='opayment' value = "${vo.opayment }" >
            <br>
            <label>운송장번호</label>
            <input class="form-control" name='oinvoice' value = "${vo.oinvoice }" >
            <br>
            <label>상품 이름(변경 불가)</label>
            <input class="form-control" name='pname' value = "${vo.pname }" >
            <br>
            
            <label>주문상태</label>
            <select name="delivery_status" id="delivery">
             <option value="배송준비" ${vo.delivery_status eq '배송준비'? 'selected' :''  } >배송준비</option>
             <option value="배송중" ${vo.delivery_status eq '배송중'? 'selected' :''  } >배송중</option>
             <option value="배송완료" ${vo.delivery_status eq '배송완료'? 'selected' :''  }> 배송완료</option>
         </select>

            <br>
            <button type="button" onclick="location.href='order'">목록</button>    
            <button type="submit">변경</button>
         </form>
   </div>
   <script>
    </script>
   
</body>

</body>
</html>