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

    <div class="main_area_none">
        <div class="main_inner_none">
            <div class="inner_none">
                <span class="cart_img">
                    <img src="img/cart.png">
                </span>
                <div class="none_alert">장바구니에 담긴 물건이 없습니다</div>
                <div class="none_recommend">
                    <span>추천 상품 보기</span>
                </div>
            </div>
        </div>
    </div>

    <div class="main_area">
        <div class="main_inner">
            <div class="inner_text">
                <h2>발송 상품</h2>
            </div>
            <div class="inner_goods">
                <div class="goods_info">
                    <img src="img/catEat01.jpg">
                    <div class="info_text">
                        <div class="info_name">커클랜드 시그니쳐 고양이 사료</div>
                        <div class="info_stock">재고있음</div>
                    </div>
                    <div class="info_count">
                        <div class="count_button">-</div>
                        <input type="text" class="count_text"/>
                        <div class="count_button">+</div>
                    </div>
                    <div class="info_pay">
                        <div class="pay_percent">10% 할인중</div>
                        <div class="pay_pluspay">25,000원</div>
                    </div>
                    <div class="info_etc">
                        <button type="button" class="btn_delete"><span>삭제</span></button>
                    </div>
                </div>
            </div>
            <div class="inner_goods">
                <div class="goods_info">
                    <img src="img/catEat01.jpg">
                    <div class="info_text">
                        <div class="info_name">커클랜드 시그니쳐 고양이 사료</div>
                        <div class="info_stock">재고있음</div>
                    </div>
                    <div class="info_count">
                        <div class="count_button">-</div>
                        <input type="text" class="count_text"/>
                        <div class="count_button">+</div>
                    </div>
                    <div class="info_pay">
                        <div class="pay_percent">10% 할인중</div>
                        <div class="pay_pluspay">25,000원</div>
                    </div>
                    <div class="info_etc">
                        <button type="button" class="btn_delete"><span>삭제</span></button>
                    </div>
                </div>
            </div>
        </div>

        <div class="pay_area">
            <hr>
            <div class="total_area">
                <div class="total_pay">
                    <div class="total_pay_1">총 상품금액</div>
                    <div class="total_pay_2">50,000원</div>
                </div>
                <div class="total_persent">
                    <div class="total_persent_1">할인받은 금액</div>
                    <div class="total_persent_2">5000원</div>
                </div>
                <div class="shipping_pay">
                    <div class="shipping_pay_1">배송비</div>
                    <div class="shipping_pay_2">무료</div>
                </div>
                <div class="pay_result">
                    <strong>결제 예상 금액</strong>
                    <span>45,000원</span>
                    <button type="button" class="result_btn">
                        <span>구매하기</span>
                    </button>
                </div>
            </div>
        </div>
    </div>
    <%@ include file="../incloud/footer.jsp" %>
