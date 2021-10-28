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

    <!-- 폰트어썸킷 -->
    <script src="https://kit.fontawesome.com/4dc30431c0.js" crossorigin="anonymous"></script>
    
    <link rel="stylesheet" href="/resources/css/common.css">
    <link rel="stylesheet" href="/resources/css/deliveryarea.css">
   
</head>
<body>
    <div class="container">
        <!-- 팝업창 헤더 -->
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
                                    <input type="text" id="addressName" class="ip_text">
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
                                    <input type="text" id="receiver" class="ip_text" placeholder="150자 이내로 입력">
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
                                    <input type="text" id="zipCode" class="ip_text" disabled>
                                </span>
                                <a href="#" class="_search">주소검색</a>
                                <p class="address_detail">
                                    <span class="basic_input">
                                        <input type="text" id="baseaadress" class="ip_text" disabled>
                                        <input type="hidden" id="roadNameAddressYn">
                                    </span>
                                </p>
                                <p class="address_detail">
									<input type="text" id="detailAddress" class="ip_text" value="" maxlength="100">
								</span>
                                </p>
                            </td>
                        </tr>
                        <tr>
                            <th class="cell_title">연락처1
                                <span><i class="fas fa-asterisk"></i></span>
                            </th>
                            <td>
                                <span class="_tel1box">
                                    <a href="#" class="_tel1_code">선택
                                        <i class="fas fa-angle-down"></i>
                                    </a>
                                    <div class="_tel1_layer">
                                        <ul>
                                            <li>
                                                <a href="#" class="_tel1code">010</a>
                                            </li>
                                            <li>
                                                <a href="#" class="_tel1code">011</a>
                                            </li>
                                            <li>
                                                <a href="#" class="_tel1code">016</a>
                                            </li>
                                            <li>
                                                <a href="#" class="_tel1code">017</a>
                                            </li>
                                            <li>
                                                <a href="#" class="_tel1code">018</a>
                                            </li>
                                            <li>
                                                <a href="#" class="_tel1code">019</a>
                                            </li>
                                        </ul>
                                    </div>
                                </span>
                                <span class="hyphen">-</span>
                                <span class="_editable_input _input basic_input">
                                        <input type="text" id="telNo1Second" class="ip_text" maxlength="4" value="">
                                    </span>
                                <span class="hyphen">-</span>
                                <span class="_editable_input _input basic_input">
                                        <input type="text" id="telNo1Third" class="ip_text" maxlength="4" value="">
                                </span>
                            </td>
                        </tr>
                        <tr>
                            <th class="cell_title">기본배송지</th>
                            <td>
                                <span class="default_delivery">
                                    <span class="_checkbox">
                                        <input type="checkbox" id="baseAddressYn">
                                        <i class="fas fa-check"></i>
                                    </span>
                                    <label for="baseAddressYn" class="lb_text">기본 배송지로 설정</label>
                                </span>
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
            <button type="button" class="_btn_save">저장</button>
        </div>
    </div>
</body>
</html>
