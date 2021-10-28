<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>   
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>   

	<%@ include file="../incloud/header.jsp" %>
<!-- 상품 상세 css -->
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/productDetail.css">
		
	<div style="margin-top: 150px;">
            <div class="container1026">
                <div class="wrap">
                    <div class="box">
                        <p>
                            <a href="../">홈</a> > <a href="productTotal">강아지용</a> > <a href="productTotal">사료</a> > <a>상품이름</a>
                        </p>
                    </div>
                </div>
            </div>
            <div class="container2">
                <div class="wrap2">
                    <div class="wp_info">
                        <div class="info_img">
                            <div class="img">
                                <img src="${pageContext.request.contextPath }/resources/img/dogEat06.jpg" alt="더독 닥터 소프트 치킨 시니어 3kg">
                            </div>
                        </div>
                        <div class="info_purchase">
                            <div class="name_price">
                                <div class="item_name">
                                    <!-- 옆에 소셜 공유 및 찜하기 기능 넣기 실패 -->
                                    <h2>더독 닥터소프트 치킨 시니어 3kg</h2>
                                </div>
                                <div class="item_price">
                                    <div class="price">
                                        <!--관리자가 변경 가능케 하기-->
                                        <div class="price_name">
                                            <h2>판매가</h2>
                                        </div>
                                        <div class="price_item">
                                            <h2>가격 책정</h2>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="shipping">
                                <div class="inventory">
                                    <!--관리자가 재고 수량 파악해서 넣기-->
                                    <h3>재고상태</h3>
                                </div>
                                <div class="shipping_style">
                                    <!--3만원 이상 구매 시 배송비 무료-->
                                    <h3>무료 배송</h3>
                                </div>
                            </div>
                            <div class="item_shipping_info">
                                <ul class="ul_info">
                                    <li class="li_info1"><strong>오늘</strong> 출발 마감까지 <strong>(몇분)</strong>남음</li>
                                    <li class="li_info2"><strong>오후 12시</strong> 이전에 주문하면 당일 배송!/영업일 기준</li>
                                    <li class="li_info3"><strong>30,000</strong> 원 이상 구매 시 무료배송</li>
                                </ul>
                            </div>
                            <div class="item_count">
                                <div class="count_plus_minus">
                                    <div>수량</div>
                                    <div class="button_push">
                                        <button class="button_minus" type="button" onclick='count("minus")' value="-"><span> - </span></button>
                                        <div class="item_amount" id="result">1</div>
                                        <button class="button_plus" type="button" onclick='count("plus")' value="+"><span> + </span></button>
                                    </div>
                                </div>
                                <div class="count_price">
                                    <div class="total_price">총 상품금액</div>
                                    <div class="total_price_items"><strong>상품개수 * 수량</strong>원</div>
                                </div>
                            </div>
                            <div class="purchase_customer">
                                <div class="cart_div">
                                    <button class="cart_into" type="button" onclick="location.href='../user/cart'">
                                        <span class="cart_ch">장바구니 담기</span>
                                        <span class="cart_dev"></span>
                                    </button>
                                </div>
                                <div class="press_div">
                                    <button class="press_purchase" type="button" onclick="location.href='../pay/payment'">
                                        <span class="press_ch">구매하기</span>
                                        <span class="press_dev"></span>
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="container3060">
                <div class="wrap3233">
                    <div class="sticky">
                        <div class="sticky_plus">
                            <div class="sticky1">
                                <div class="sticky1_info" style="overflow: hidden;">
                                    <div aria-label="탭" role="tablist" class="sticky1_buttondiv">
                                        <button class="sticky1_button1 button_same" type="button" tabindex="0"
                                            aria-selected="true">
                                            <span>상품정보</span>
                                        </button>
                                        <button class="sticky1_button1 button_same" type="button" tabindex="-1"
                                            aria-selected="false">
                                            <span>질문/답변</span>
                                        </button>
                                        <button class="sticky1_button1 button_same" type="button" tabindex="-1"
                                            aria-selected="false">
                                            <span>구매후기</span>
                                        </button>
                                        <button class="sticky1_button1 button_same" type="button" tabindex="-1"
                                            aria-selected="false">
                                            <span>취소/교환/반품안내</span>
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="sticky2"></div>
                    </div>
                    <div class="">
                        <div class="item_info">
                            <div class="item_info_title">
                                <div class="item_info_title_dev">
                                    <h3>상품정보</h3>
                                    <span role="button"></span>
                                </div>
                            </div>
                            <div class="item_info_content">
                                <div class="item_info_content1">
                                    <button class="item_info_button" tabindex="0" type="button" data-toggle="modal"
                                        data-target="#myModal">
                                        <h4>설명</h4>
                                        <div class="item_info_dev1">
                                            <div class="item_info_dev2">
                                                상품 설명을 적어주세요
                                                <span>...</span><!-- 더보기를 누르면 상품 페이지 상세 보기 가능-->
                                                <span class="item_info_dev1_plus">더보기</span>
                                            </div>
                                            <div class="iten_info_dev1_end"></div>
                                        </div>
                                    </button>
                                    <div class="modal fade" id="myModal" role="dialog">
                                        <div class="modal-dialog modal-lg">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <h3>설명</h3>
                                                    <div class="button_close">
                                                        <button type="button" class="close"
                                                            data-dismiss="modal">&times;</button>
                                                    </div>
                                                </div>
                                                <div class="modal-body">
                                                    <div>
                                                        <p class="modal-body_p1"><strong>설명</strong></p>
                                                        <p class="modal-body_p2">네츄럴코어 홀리스틱 베네 M32 멀티프로테인은 최적의 영양밸런스를
                                                            자랑하는 사료이며, 뼈를 발라낸 국내산 오리고기, 닭살코기 분말 등 양질의 단백질원을 함유하여 강아지에게
                                                            필요한 양질의 단백질을 풍부하게 제공해주며, 아스타잔틴이 함유된 사료로 키운 오리고기는 면역력과 항산화
                                                            기능을 향상시키고 스트레스 및 눈의 피로를 감소시켜 줍니다. 비타민나무로 불리는 씨벅턴은 사과의
                                                            200~800배의 비타민을 함유하고 있으며 비타민A, C가 동시에 포함된 유일한 과실로 강력한 항산화
                                                            효과뿐아니라 각종 영양소의 신진대사율을 높여 비만 예방과 심혈관 질환 예방에 도움을 줍니다. 씨눈을 제거하지
                                                            않은 유기농 통곡물은 수용성 섬유소와 다양한 비타민 및 미네랄이 함유되어 있어 장기능 개선과 체내 밸런스
                                                            유지 및 심혈관 질환 예방에 도움을 줍니다. 또한, 안토시아닌이 풍부하게 함유된 블루베리는 눈의 건강을
                                                            지켜주고, 항산화 효과 및 심혈관 개선에 도움을 주고, 유익균 발효 추출물과 장내 유익균의 먹이가 되는
                                                            키토산 올리고당과 알긴산 올리고당의 배합으로 소화기능 개선 및 설사예방 변냄새 개선에 효과적이며, 키토산
                                                            올리고당의 영향으로 변이 검게 나올 수 있습니다. 유기농 원료는 천연 항산화 물질인 폴리페놀이 다량 함유되어
                                                            있어 각종 질병과 노화의 원인이 되는 활성산소로부터 건강한 세포를 보호해 줍니다. 원료가 생산, 재배되는
                                                            농장과, 양축장에서 출하되어 완제품이 생산되는 전 과정을 관리 감독하여 미국USDA, 유럽ECOCERT에서
                                                            매년 인증서를 발급해주며 농약, 화학비료, 인공색소, 방부제 및 GMO로부터 안전합니다. 내추럴코어는 엄선된
                                                            유기농 원료와 깐깐한 공정으로 안전한 먹거리를 생산하며, 각각 원료의 특성에 맞게 1차 가공한 원료로
                                                            씨앗에서 재료가 되기까지 철저한 이력관리가 이루어지고 있습니다. 또한, 교차 오염을 방지하기 위해 생산공장은
                                                            도로로 부터 멀리 떨어진 곳에 자리하고 있으며 생산 후 즉시 출하 됨으로 갓 구워낸 신선한 제품을
                                                            공급합니다. 질소 충전 포장으로 산소와의 접촉을 취대한 줄였으며, 400g씩 15개로 낱개 소포장으로 보관이
                                                            용이합니다.</p>
                                                        <p style="margin-bottom: 0;"><strong>권장급여방법</strong></p>
                                                        <p style="margin-bottom: 40px;">
                                                            몸무게1~5kg : 하루에 30~110g 급여 (종이컵 0.5 ~ 2컵)
                                                            몸무게 5~10kg : 하루에 110~180g 급여 (종이컵 2 ~ 3컵)
                                                            몸무게 10~15kg : 하루에 180~250g 급여 (종이컵 3 ~ 4컵)
                                                            몸무게 15~20kg : 하루에 250~300g 급여 (종이컵 4 ~ 5컵)
                                                            몸무게 20~25kg : 하루에 300~350g 급여 (종이컵 5 ~ 6컵)
                                                            몸무게 25~30kg : 하루에 350~400g 급여 (종이컵 6 ~ 6.5컵)
                                                            몸무게 35~40kg : 하루에 400~470g 급여 (종이컵 6.5 ~ 8컵)
                                                            몸무게 40kg~ : 하루에 470g + 몸무게 1kg당 8g 추가 급여 (종이컵 8컵 ~)
                                                        </p>
                                                        <ul>
                                                            <li>종이컵 1컵 = 약 60g (200ml 종이컵 기준)</li>
                                                            <li>계량 방법, 사료 크기에 따라 차이가 날 수 있으니 정확한 급여량은 상품 패키지를 참고하시기
                                                                바랍니다.</li>
                                                            <li>급여량은 반려견의 활동량, 연령, 생활환경 등에 따라 차이가 날 수 있습니다.</li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="item_info_content2">
                                    <button class="item_info_ch" tabindex="0" type="button" data-toggle="modal"
                                        data-target="#myModal2">
                                        <h4>특징</h4>
                                        <div class="item_info_ch_div">
                                            <div class="item_info_ch_content">
                                                <ul class="item_info_ch_ul">
                                                    <li class="item_info_ch_li">특징1</li>
                                                    <li class="item_info_ch_li">특징2</li>
                                                    <li class="item_info_ch_li">특징3</li>
                                                    <li class="item_info_ch_li">특징4</li>
                                                </ul>
                                            </div>
                                        </div>
                                    </button>
                                    <div class="modal fade" id="myModal2" role="dialog">
                                        <div class="modal-dialog">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <h3>특징</h3>
                                                    <div class="button_close">
                                                        <button type="button" class="close"
                                                            data-dismiss="modal">&times;</button>
                                                    </div>
                                                </div>
                                                <div class="modal-body1">
                                                    <div class="body_div1">
                                                        <div>
                                                            <h4 class="body_ch1">특징</h4>
                                                            <div>
                                                                <ul style="margin-bottom: 40px;">
                                                                    <li class="body_li">아스타크산틴 오리고기 함유로 면역력 강화에 도움</li>
                                                                    <li class="body_li">소화기능 개선 및 설사예방, 변냄새 개선</li>
                                                                    <li class="body_li">치아가 약해도 쉽게 씹어먹을 수 있는 낮은 알갱이 밀도
                                                                    </li>
                                                                    <li class="body_li">항생제, 화학비료, 합성착색료, GMO 무첨가</li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                        <div>
                                                            <h4 class="body_ch1">상품 요약</h4>
                                                            <div>
                                                                <div>
                                                                    <h5
                                                                        style="margin: 0 0 4px !important; font-weight: 600;">
                                                                        원산지</h5>
                                                                    <p style="margin-bottom: 40px;">한국</p>
                                                                </div>
                                                                <div>
                                                                    <h5
                                                                        style="margin: 0 0 4px !important; font-weight: 600;">
                                                                        제조사</h5>
                                                                    <p style="margin-bottom: 40px;">(주)회사명</p>
                                                                </div>
                                                                <div class="life_dropdown">
                                                                    <h5
                                                                        style="margin: 0 0 4px !important; font-weight: 600;">
                                                                        유통기한</h5>
                                                                    <p style="margin-bottom: 40px;">18개월</p>
                                                                    <button class="life_button" tabindex="0"
                                                                        type="button">
                                                                        유통기한 보는 법
                                                                        <span class="life_span"></span>
                                                                    </button>
                                                                    <div class="life_div">본 상품은 제조일자와 유통기한이 함께 표기되어
                                                                        있습니다. 일자는 년/월/일으로 표기되어 있습니다. 예) 2020.06.23 ->
                                                                        2020년 6월 23일</div>
                                                                </div>
                                                                <div>
                                                                    <h5
                                                                        style="margin: 0 0 4px !important; font-weight: 600;">
                                                                        권장연령</h5>
                                                                    <p style="margin-bottom: 40px;">모든연령</p>
                                                                </div>
                                                                <div>
                                                                    <h5
                                                                        style="margin: 0 0 4px !important; font-weight: 600;">
                                                                        용량/중량</h5>
                                                                    <p style="margin-bottom: 40px;">3kg</p>
                                                                </div>
                                                                <div>
                                                                    <h5
                                                                        style="margin: 0 0 4px !important; font-weight: 600;">
                                                                        성분구성</h5>
                                                                    <p style="margin-bottom: 40px;">조단백 23.0%이상, 조지방
                                                                        12.0%이상, 조섬유 6.0%이하, 조회분 8.0%이하, 인 0.4%이하, 칼슘
                                                                        0.9%이상, 수분 12.0%이하</p>
                                                                </div>
                                                                <div>
                                                                    <h5
                                                                        style="margin: 0 0 4px !important; font-weight: 600;">
                                                                        원료구성</h5>
                                                                    <p style="margin-bottom: 40px;">가수분해 오리고기, 닭살코기 분말,
                                                                        현미, 고구마, 감자, 닭기름, 비트펄프, 통아마씨, 유카시디게라 추출물, 생선오일,
                                                                        홍삼, 천일염, 프락토 올리고당, 타우린, 씨벅턴열매, 달맞이꽃 씨, 당근, 고수,
                                                                        시금치, 메티오닌, 인산 칼슘, 유산균, 각종 비타민과 미네랄</p>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div>
                                                            <h5
                                                                style="font-size: 15px; margin-bottom: 4px; font-weight: 600;">
                                                                소비자 상담 전화번호</h5>
                                                            <p style="margin-bottom: 40px;">회사명 고객센터 1588-1234</p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="item_info_image">
                                <div class="item_info_image1">
                                    <picture class="item_info_image_picture">
                                        <source media="(max-width:1199px)" srcset="img/84863_desc_110673.jpg">
                                        <img class="image_information" src="/resources/img/84863_desc_110673.jpg"
                                            alt="예제 이미지" sizes="auto">
                                    </picture>
                                </div>
                                <div class="item_info_moreinfo" role="button" aria-disabled="false">
                                    <span class="moreinfo_span1">상품 상세</span>
                                    <span class="moreinfo_span2"></span>
                                </div>
                            </div>
                        </div>
                        <div class="ques_ans">
                            <div class="qna_title">
                                <div class="qna_title_1">
                                    <h3 class="item_qna">질문/답변</h3>
                                    <span role="button">
                                        <a href="########" tabindex="0" aria-disabled="false" class="atag">
                                            <span>더 보기</span>
                                        </a>
                                        <!--질문답변 게시판으로-->
                                    </span>
                                </div>
                            </div>
                            <div class="qna_content">
                                <div>
                                    <div class="qna_content1">
                                        <a class="content_detail1" href="질문답변게시판상세보기로" tabindex="0"
                                            aria-disabled="false">
                                            <div class="content_detail1_div1">
                                                <dl class="content_detail1_div1_dl">
                                                    <dt class="content_detail1_div1_dl_dt">
                                                        <strong>질문</strong>
                                                    </dt>
                                                    <dd style="padding: 2px 0 10px;">고양이가 먹어도 되나요?</dd>
                                                </dl>
                                                <dl class="content_detail1_div1_dl">
                                                    <dt class="content_detail1_div1_dl_dt2">
                                                        <strong>답변</strong>
                                                    </dt>
                                                    <dd style="padding: 2px 0 10px;">하루 이틀은 괜찮지만 고양이는 육식이기 때문에 강아지 사료를
                                                        먹이는 것은 추천하지 않습니다.</dd>
                                                </dl>
                                                <div class="content_detail1_div1_div"></div>
                                            </div>
                                            <span></span>
                                        </a>
                                    </div>
                                    <div class="qna_content1">
                                        <a class="content_detail1" href="질문답변게시판상세보기로" tabindex="0"
                                            aria-disabled="false">
                                            <div class="content_detail1_div1">
                                                <dl class="content_detail1_div1_dl">
                                                    <dt class="content_detail1_div1_dl_dt">
                                                        <strong>질문</strong>
                                                    </dt>
                                                    <dd style="padding: 2px 0 10px;">1g당 칼로리가 궁금합니다.</dd>
                                                </dl>
                                                <dl class="content_detail1_div1_dl">
                                                    <dt class="content_detail1_div1_dl_dt2">
                                                        <strong>답변</strong>
                                                    </dt>
                                                    <dd style="padding: 2px 0 10px;">약 3.64kcal입니다. (kg 당 3640kcal)</dd>
                                                </dl>
                                                <div class="content_detail1_div1_div"></div>
                                            </div>
                                            <span></span>
                                        </a>
                                    </div>
                                    <div class="qna_content1">
                                        <a class="content_detail1" href="질문답변게시판상세보기로" tabindex="0"
                                            aria-disabled="false">
                                            <div class="content_detail1_div1">
                                                <dl class="content_detail1_div1_dl">
                                                    <dt class="content_detail1_div1_dl_dt">
                                                        <strong>질문</strong>
                                                    </dt>
                                                    <dd style="padding: 2px 0 10px;">사람이 먹어도 되나요?</dd>
                                                </dl>
                                                <dl class="content_detail1_div1_dl">
                                                    <dt class="content_detail1_div1_dl_dt2">
                                                        <strong>답변</strong>
                                                    </dt>
                                                    <dd style="padding: 2px 0 10px;">먹는 것은 자유이지만 그에 따른 피해는 책임지지 않습니다.
                                                    </dd>
                                                </dl>
                                                <div class="content_detail1_div1_div"></div>
                                            </div>
                                            <span></span>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="purchase_review">
                            <div class="review_title">
                                <div class="review_title_1">
                                    <h3 class="review_title_h3">구매후기</h3>
                                    <span role="button">
                                        <span role="button">
                                            <a href="########" tabindex="0" aria-disabled="false" class="atag">
                                                <span>더 보기</span>
                                            </a>
                                            <!--질문답변 게시판으로-->
                                        </span>
                                    </span>
                                </div>
                            </div>
                            <div id="comment_review" class="review_content">
                                <div class="review_content_title">
                                    <h3>댓글 후기</h3>
                                </div>
                                <div class="review_rating">
                                    <div class="rating">
                                        <!-- 해당 별점을 클릭하면 해당 별과 그 왼쪽의 모든 별의 체크박스에 checked 적용 -->
                                        <input type="checkbox" name="rating" id="rating1" value="1" class="rate_radio"
                                            title="1점">
                                        <label for="rating1"></label>
                                        <input type="checkbox" name="rating" id="rating2" value="2" class="rate_radio"
                                            title="2점">
                                        <label for="rating2"></label>
                                        <input type="checkbox" name="rating" id="rating3" value="3" class="rate_radio"
                                            title="3점">
                                        <label for="rating3"></label>
                                        <input type="checkbox" name="rating" id="rating4" value="4" class="rate_radio"
                                            title="4점">
                                        <label for="rating4"></label>
                                        <input type="checkbox" name="rating" id="rating5" value="5" class="rate_radio"
                                            title="5점">
                                        <label for="rating5"></label>
                                    </div>
                                    <div class="review_contents">
                                        <div class="warning_msg">5자 이상으로 작성해 주세요.</div>
                                        <textarea rows="10" class="review_textarea"></textarea>
                                    </div>
                                    <div class="review_cmd">
                                        <span class="review_submit">
                                            <input type="button" name="save" id="save" value="등록">
                                        </span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="cancel_return">
                            <div class="cancel_return_container">
                                <div class="cancel_return_header">
                                    <div class="cancel_return_title">
                                        <h3 class="cancel_return_title1">취소/교환/반품 안내</h3>
                                        <span role="button">
                                            <button class="cancel_return_info" tabindex="0" type="button">
                                                <span class="mybutton">더보기</span>
                                            </button>
                                        </span>
                                    </div>
                                </div>
                                <button class="cancel_return_button2">
                                    <div class="mydiv">
                                        <h4>취소</h4>
                                        <ul>
                                            <li>입금하신 상품은 '입금대기, 입금완료' 단계에서만 취소가 가능합니다.</li>
                                        </ul>
                                        <h4 class="myh4123">교환/반품</h4>
                                        <ul>
                                            <li>교환 및 반품은 배송완료일 기준으로 7일 이내 가능합니다.</li>
                                        </ul>
                                    </div>
                                </button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
       <%@ include file="../incloud/footer.jsp" %>
