<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>배송지 입력 폼</title>

    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
	
    <!-- 폰트어썸킷 -->
    <script src="https://kit.fontawesome.com/4dc30431c0.js" crossorigin="anonymous"></script>
    
    <link rel="stylesheet" href="/resources/css/common.css">
    <link rel="stylesheet" href="/resources/css/deliveryarea.css">
   
</head>
<body>
    <div class="container">
        <!-- 팝업창 헤더 -->
        <form action="deliveryForm" name="deliveryForm" method="post">
	        <div id="pop_header">
	            <h1 class="h1">배송지 등록/수정</h1>
	            <span class="logo_img">
	                <img class="imglog" src="/resources/img/logoimg.png" alt="로고이미지">
	            </span>
	            <button type="button" class="popup_close" onclick="window.close();">
	                <span><i class="fas fa-times"></i></span>
	            </button>
	        </div>
	        <div id="pop_container">
	            <div id="pop_content">
	                <div class="setting_popup_title">
	                    <h2 class="h_title">배송지 정보 상세</h2>
	                </div>
	                <table class="tbl_delivery_info">
	                    <colgroup>
	                        <col class="cell_title">
	                        <col>
	                    </colgroup>
	                    <tbody>
	                        <tr>
	                            <th class="cell_title">배송지명</th>
	                            <td>
	                                <span class="_editable_input">
	                                    <input type="text" id="addressName" name="oplace" class="ip_text">
	                                </div>
	                                    <input type="hidden" id="hash" class="ip_text">
	                                </span>
	                            </td>
	                        </tr>
	                        <tr>
	                            <th class="cell_title">
	                                <span class="blind">수령인</span>
	                                <span><i class="fas fa-asterisk"></i></span>
	                            </th>
	                            <td>
	                                <span class="_editable_input">
	                                    <input type="text" id="receiver" name="oname" class="ip_text" placeholder="150자 이내로 입력">
	                                </span>
	                            </td>
	                        </tr>
	                        <tr>
	                            <th class="cell_title add_title">
	                                <span class="blind">주소</span>
	                                <span><i class="fas fa-asterisk"></i></span>
	                            </th>
	                            <td>
	                                <span class="basic_input">
	                                    <input type="text" id="zipCode" name="opost" class="ip_text" >
	                                </span>
	                                <a href="#" class="_search" onclick="goPopup()">주소검색</a>
	                                <p class="address_detail">
	                                    <span class="basic_input">
	                                        <input type="text" id="baseaadress" name="oaddress" class="ip_text" >
	                                        <input type="hidden" id="roadNameAddressYn">
	                                    </span>
	                                </p>
	                                <p class="address_detail">
										<input type="text" id="detailAddress" name="oaddress1" class="ip_text" maxlength="100">
									</span>
	                                </p>
	                            </td>
	                        </tr>
	                        <tr>
	                            <th class="cell_title">연락처
	                                <span><i class="fas fa-asterisk"></i></span>
	                            </th>
	                            <td>
	                                <span class="_editable_input _input basic_input">
                                        <input type="text" id="telNo1Third" name="ophone" class="ip_text">
	                                </span>
	                            </td>
	                        </tr>
	                        <tr>
	                            <th class="cell_title">기본배송지</th>
	                            <td>
									<label for="baseAddressYn" class="lb_text">
										<i class="fas fa-check"></i>
										<input type="text" id="baseAddressYn" name="odefault" value="0">
										기본 배송지로 설정
									</label>
								</td>
	                        </tr>
	                    </tbody>
	                </table>
	                <div class="delivery_notice">
	                    <p class="desc">· 입력/수정하신 배송지는 배송지 목록에 저장됩니다.</p>
	                </div>
	            </div>
	        </div>
	        <div id="pop_footer">
	            <button type="button" class="button" onclick="javascript:window.close();return false;">닫기</button>
	            <button type="submit" class="_btn_save">저장</button>
	        </div>
        </form>
    </div>
    
    <script type="text/javascript">
    function goPopup(){
		
    	var pop = window.open("${pageContext.request.contextPath }/resources/popup/jusoPopup.jsp","pop","width=570,height=420, scrollbars=yes, resizable=yes"); 
    	
    }
 	//주소정보의 연계데이터를 돌려받는 콜백함수
    function jusoCallBack(roadFullAddr,roadAddrPart1,addrDetail,roadAddrPart2,engAddr, jibunAddr, zipNo, admCd, rnMgtSn, bdMgtSn,detBdNmList,bdNm,bdKdcd,siNm,sggNm,emdNm,liNm,rn,udrtYn,buldMnnm,buldSlno,mtYn,lnbrMnnm,lnbrSlno,emdNo){
    
//     	console.log(roadAddrPart1, addrDetail, zipNo);
		document.deliveryForm.opost.value = zipNo;
		document.deliveryForm.oaddress.value = roadAddrPart1;
		document.deliveryForm.oaddress1.value = addrDetail;
    }
    
 	
//     $(document).ready(function(){
//     	$("._btn_save").click(function() {
// 	    	$.ajax({
// 	    		type: 'post',//데이터 전송 타입,
// 	    		url : 'deliveryList',//데이터를 주고받을 파일 주소 입력,
// 		        processData: false, //변수=값 으로 자동형변환되는 것을 막음
// 		        contentType: false, //기본형 폼데이터형식으로 선언됨
// 	    		data: formData, //보내는 데이터,
// 	    		dataType://문자형식으로 받기 , 
// 	    		success: function(){
// 	    			window.close(); //작업이 성공적으로 발생했을 경우
// 	    		},
// 	    		error:function(){  
// 	    			console.log(error);  //에러가 났을 경우 실행시킬 코드
// 	    		}
// 	    	})
// 		});
//     });
    
    </script>
    
    
</body>
</html>
