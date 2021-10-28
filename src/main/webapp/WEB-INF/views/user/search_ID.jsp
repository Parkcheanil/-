<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>회원가입</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/common.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/join.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/ID_search.css">
    
</head>
<body>
    <div class="container">
     <!-- wrapper -->
         <div class="wrap" style="margin: 0 auto;">
             <!-- content-->
             <div class="content">
                 <div>
                     <h3>아이디 찾기</h3>
                 </div>

                 <!-- 이름 -->
                 <div>
                     <h3 class="join_title"><label for="name">이름</label></h3>
                     <span class="box int_name">
                         <input type="text" id="name" class="int" maxlength="20">
                     </span>
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

                    <div>
                        <button type="button" onclick="location.href='searchID_result'">검색하기 </button>
                    </div>
                </div>  
            </div> 
        </div>
    </body>
</html>