<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!-- 인클루드 헤더 -->
<%@ include file="../incloud/header.jsp" %>

<!-- 
<head>
	<meta charset="UTF-8">
	<title>회원가입</title>
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/common.css">
</head>
-->
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/join.css">

<body>
    <div class="container">
    <!-- wrapper -->
        <div class="wrap" style="margin: 0 auto;">
            <!-- content-->
            <div class="content">
                <!-- 로고 -->
                <div class="logo">
                    <img src="/resources/img/noimg.png">
                </div>

                <!-- ID -->
                <div>
                    <h3 class="join_title">
                        <label for="id">아이디 (이메일)</label>
                    </h3>
                    <span class="box int_id">
                        <input type="text" id="id" class="int">
                    </span>
                    <span class="error_next_box">필수 입력값입니다</span>
                </div>

                
                
                <!-- PW1 -->
                <div>
                    <h3 class="join_title"><label for="pswd1">비밀번호</label></h3>
                    <span class="box int_pass">
                        <input type="text" id="pswd1" class="int" maxlength="20">
                        <span id="alertTxt">사용불가</span>
                    </span>
                    <span class="error_next_box">필수 입력값입니다</span>
                </div>
                
                <!-- PW2 -->
                <div>
                    <h3 class="join_title"><label for="pswd2">비밀번호 재확인</label></h3>
                    <span class="box int_pass_check">
                        <input type="text" id="pswd2" class="int" maxlength="20"> 
                    </span>
                    <span class="error_next_box"></span>
                </div>
                
                <!-- NAME -->
                <div>
                    <h3 class="join_title"><label for="name">이름</label></h3>
                    <span class="box int_name">
                        <input type="text" id="name" class="int" maxlength="20">
                    </span>
                    <span class="error_next_box"></span>
                </div>

                <!-- 닉네임 -->
                <div>
                    <h3 class="join_title">
                        <label for="email">닉네임</label>
                    </h3>
                    <span class="box int_id">
                        <input type="text" id="nickname" class="int">
                    </span>
                    <span class="error_next_box"></span>
                </div>


                <!-- BIRTH -->
                <div>
                    <h3 class="join_title"><label for="yy">생년월일</label></h3>

                    <div id="bir_wrap">
                        <!-- BIRTH_YY -->
                        <div id="bir_yy">
                            <span class="box">
                                <input type="text" id="yy" class="int" maxlength="4" placeholder="년(4자)">
                            </span>
                        </div>

                        <!-- BIRTH_MM -->
                        <div id="bir_mm">
                            <span class="box">
                                <select id="mm" class="sel">
                                    <option>월</option>
                                    <option value="01">1</option>
                                    <option value="02">2</option>
                                    <option value="03">3</option>
                                    <option value="04">4</option>
                                    <option value="05">5</option>
                                    <option value="06">6</option>
                                    <option value="07">7</option>
                                    <option value="08">8</option>
                                    <option value="09">9</option>                                    
                                    <option value="10">10</option>
                                    <option value="11">11</option>
                                    <option value="12">12</option>
                                </select>
                            </span>
                        </div>

                        <!-- BIRTH_DD -->
                        <div id="bir_dd">
                            <span class="box">
                                <input type="text" id="dd" class="int" maxlength="2" placeholder="일">
                            </span>
                        </div>

                    </div>
                    <span class="error_next_box"></span>    
                </div>

                <!-- 주소 -->
                <!-- 우편번호 -->
                <div>
                    <h3 class="join_title"><label for="addr-num">주소</label></h3>
                    <span class="box int_address">
                        <input type="text" id="addrZipNum" class="int" placeholder="우편번호" readonly>

                        <span id="addrFind">
                            <button type="button">주소찾기</button>
                        </span>
                    <span class="error_next_box"></span>
                </div>
                
                <!-- 기본주소 -->
                <div>
                    <span class="box int_address">
                        <input type="text" id="addrBasic" class="int" placeholder="기본주소">
                    <span class="error_next_box"></span>
                </div>

                <!-- 상세주소 -->
                <div>
                    <span class="box int_address">
                        <input type="text" id="addrDetail" class="int" placeholder="상세주소">
                    <span class="error_next_box"></span>
                </div>                    

            <!-- MOBILE -->
            <div>
                <h3 class="join_title"><label for="phoneNo">휴대전화</label></h3>
                
                <div class="phone_wrap">

                    <!-- 통신사 -->
                    <div class="phone_company">
                        <span class="box">
                            <select id="company" class="sel">
                                <option>통신사</option>
                                <option value="LGU+">LGU+</option>
                                <option value="SKT">SKT</option>
                                <option value="KT">KT</option>
                                <option value="ACTS">알뜰폰</option>
                            </select>                            
                        </span>
                        <span class="error_next_box"></span>
                    </div>

                    <!--전화 번호 -->
                    <div class="phone_num">
                        <span class="box">
                            <input type="tel" id="mobile" class="int" maxlength="16" placeholder="전화번호 입력">
                        </span>
                        <span class="error_next_box"></span>    
                    </div>
                    
                </div> <!-- 폰 랩 태그 -->
            </div> <!-- 모바일 태그 끝 -->


                <!-- JOIN BTN-->
                <div class="btn_area">
                    <button type="button" id="btnJoin" onclick="location.href='join_welcome'">가입하기
                    </button>
                </div>

            </div> 
        </div> 
    </div>
<%@ include file="../incloud/footer.jsp" %>
    
