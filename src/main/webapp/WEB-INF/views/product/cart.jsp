<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>   
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>   

	<%@ include file="../incloud/header.jsp" %>
	
	<!-- 장바구니 css -->
		<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/petlist.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/cart.css">
	<div class="cart_info">
        <h2>장바구니</h2>
        <div class="cart_info_order">    
            <span>01. 장바구니</span>
            <svg></svg>
            <span>02. 주문결제</span>
            <svg></svg>
            <span>03. 결제완료</span>
        </div>
    </div>
	
	<c:choose>
		<c:when test="${empty clist}" >
		    <div class="main_area_none">
		        <div class="main_inner_none">
		            <div class="inner_none">
		                <span class="cart_img">
		                    <img src="${pageContext.request.contextPath }/resources/img/cart.png">
		                </span>
		                <div class="none_alert">장바구니에 담긴 물건이 없습니다</div>
		                <div class="none_recommend">
		                    <span onclick="location.href='productTotal'">추천 상품 보기</span>
		                </div>
		            </div>
		        </div>
		    </div>
		</c:when>
		<c:when test="${not empty clist}">
		    <div class="main_area">
		        <div class="main_inner">
		            <div class="inner_text">
		                <h2>발송 상품</h2>
		            </div>
		            <c:set var="total" value="0"/>
		            <c:set var="cart_pay" value="0"/>
				    	<div class="inner_goods">
			            	<c:forEach var="cart" items="${clist }">
			            		<c:set var="cart_pay" value="${cart.PPRICE }"/>
				                <div class="goods_info">
				                    <img src="/resources/img/${cart.PIMAGEADDR }">
				                    <div class="info_text">
				                        <div class="info_name">${cart.PNAME }</div>
				                        <div class="info_stock">
				                        	<c:if test="${cart.PSTOCK > 0 }">재고있음</c:if>
				                        	<c:if test="${cart.PSTOCK < 1 }">재고없음</c:if>
				                        </div>
				                    </div>
				                    <div class="info_count">
				                        <div class="count_button"><button type="submit" data-cartnum="${cart.CNO }" class="cartMinus" onclick="handleCart(this)">-</button></div>
				                        <input type="text" class="count_text" value="${cart.CARTNUM }"/>
				                        <div class="count_button"><button type="submit" data-cartnum="${cart.CNO }" class="cartPlus" onclick="handleCart(this)">+</button></div>
				                    </div>
				                    <div class="info_pay">
				                        <div class="pay_percent"><fmt:parseNumber value="${(cart_pay/10*cart.CARTNUM)}" pattern="#,#00"/>원 할인</div>
				                        <div class="pay_pluspay"><fmt:parseNumber value="${(cart.PPRICE*cart.CARTNUM) - (cart_pay/10*cart.CARTNUM)}" pattern="#,#00"/>원</div>
				                    </div>
				                    <div class="info_etc">
				                        <button type="submit" class="btn_delete" onclick="location.href='cartDelete?cno=${cart.CNO}'">삭제</button>
				                    </div>
				                </div>
			            	<c:set var="total" value="${total+(cart_pay*cart.CARTNUM) }"/>
			            	</c:forEach>
						</div>
		        	</div>
		        <div class="pay_area">
		            <hr>
		            <div class="total_area">
		                <div class="total_pay">
		                    <div class="total_pay_1">총 상품금액</div>
		                    <div class="total_pay_2"><fmt:parseNumber value="${total}" pattern="###,###,###"/>원</div>
		                    
		                </div>
		                <div class="total_persent">
		                    <div class="total_persent_1">할인받은 금액</div>
		                    <div class="total_persent_2"><fmt:parseNumber value="${total/10 }" pattern="###,###,###"/>원</div>
		                </div>
		                <div class="shipping_pay">
		                    <div class="shipping_pay_1">배송비</div>
		                    <div class="shipping_pay_2">무료</div>
		                </div>
		                <div class="pay_result">
		                    <strong>결제 예상 금액</strong>
		                    <span><fmt:parseNumber value="${total - total/10 }" pattern="###,###,###"/>원</span>
		                    <button type="button" class="result_btn" onclick="location.href='/pay/payment'">
		                        <span>구매하기</span>
		                    </button>
		                </div>
		            </div>
		        </div>
		    </div>
		</c:when>		
    </c:choose>
    
    <script>
    	function handleCart(btn){
    		console.log(btn, btn.classList)
    		
    		console.dir(btn )
    		
    		if(btn.classList.contains("cartPlus")) {
    			location.href="cartPlus?CNO=" + btn.dataset.cartnum; 
    					
    		} else {
    			location.href="cartMinus?CNO=" + btn.dataset.cartnum;
    		}
    	}
    </script>
    
    <%@ include file="../incloud/footer.jsp" %>
