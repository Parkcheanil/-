<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>   
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>   

	<%@ include file="../incloud/header.jsp" %>
<!-- 상품 상세 css -->
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/productDetail.css">
	<script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>
	<script src="/resources/jquery/jquery-3.3.1.min.js"></script>
	<div style="margin-top: 150px;">
            <div class="container2">
                <div class="wrap2">
                    <div class="wp_info">
                        <div class="info_img">
                            <div class="img">
                                <img src="${pageContext.request.contextPath }/resources/img/${vo.PIMAGE}" alt="${vo.PNAME }">
                            </div>
                        </div>
                        <div class="info_purchase">
                            <div class="name_price">
                                <div class="item_name">
                                    <!-- 옆에 소셜 공유 및 찜하기 기능 넣기 실패 -->
                                    <h2>${vo.PNAME }</h2>
                                </div>
                                <div class="item_price">
                                    <div class="price">
                                        <!--관리자가 변경 가능케 하기-->
                                        <div class="price_name">
                                            <h2>판매가</h2>
                                        </div>
                                        <div class="price_item">
                                            <h2><fmt:formatNumber value="${vo.PPRICE }" pattern="###,###,###"/></h2>
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
                                        <button class="button_minus" type="button" id="minus"><span> - </span></button>
                                        <input class="item_amount" id="result" type="number" min="1" max="${vo.PSTOCK }" value="1" readonly="readonly"/>
                                        <button class="button_plus" type="button" id="plus"><span> + </span></button>
                                    </div>
                                </div>
                                <div class="count_price">
                                    <div class="total_price">총 상품금액</div>
                                    <div class="total_price_items"><strong>${vo.PPRICE}</strong>원</div>
                                </div>
                            </div>
                            <div class="purchase_customer">
                                <div class="cart_div">
                                    <button class="cart_into" type="button" onclick="location.href='cart'">
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
                                            aria-selected="true" onclick="fnMove('1')">
                                            <span>상품정보</span>
                                        </button>
                                        <button class="sticky1_button1 button_same" type="button" tabindex="-1"
                                            aria-selected="false" onclick="fnMove('2')">
                                            <span>질문/답변</span>
                                        </button>
                                        <button class="sticky1_button1 button_same" type="button" tabindex="-1"
                                            aria-selected="false" onclick="fnMove('3')">
                                            <span>구매후기</span>
                                        </button>
                                        <button class="sticky1_button1 button_same" type="button" tabindex="-1"
                                            aria-selected="false" onclick="fnMove('4')">
                                            <span>취소/교환/반품안내</span>
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="sticky2"></div>
                    </div>
                    <div class="">
                        <div class="item_info" id="div1">
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
                                            <div class="item_info_dev2" style="text-overflow: ellipsis;">
                                              	'네츄럴코어 홀리스틱 베네 M32 멀티프로테인은 최적의 영양밸런스를 자랑하는 사료이며, 뼈를 발라낸 
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
                                                        <p class="modal-body_p2">${vo.pdDETAIL }</p>
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
                                                            <li>계량 방법, 사료 크기에 따라 차이가 날 수 있으니 정확한 급여량은 상품 패키지를 참고하시기 바랍니다.</li>
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
                                                    <li class="item_info_ch_li">제품의 특징을 보고 싶으시다면 클릭하세요.</li>
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
                                                                    <h5 style="margin: 0 0 4px !important; font-weight: 600;">원산지</h5>
                                                                    <p style="margin-bottom: 40px;">한국</p>
                                                                </div>
                                                                <div>
                                                                    <h5 style="margin: 0 0 4px !important; font-weight: 600;"> 제조사</h5>
                                                                    <p style="margin-bottom: 40px;">(주)회사명</p>
                                                                </div>
                                                                <div class="life_dropdown">
                                                                    <h5 style="margin: 0 0 4px !important; font-weight: 600;">  유통기한</h5>
                                                                    <p style="margin-bottom: 40px;">18개월</p>
                                                                    <button class="life_button" tabindex="0" type="button">
                                                                        	유통기한 보는 법
                                                                        <span class="life_span"></span>
                                                                    </button>
                                                                    <div class="life_div">본 상품은 제조일자와 유통기한이 함께 표기되어 있습니다. 일자는 년/월/일으로 표기되어 있습니다. 예) 2020.06.23 -> 2020년 6월 23일</div>
                                                                </div>
                                                                <div>
                                                                    <h5 style="margin: 0 0 4px !important; font-weight: 600;"> 권장연령</h5>
                                                                    <p style="margin-bottom: 40px;">모든연령</p>
                                                                </div>
                                                                <div>
                                                                    <h5 style="margin: 0 0 4px !important; font-weight: 600;">용량/중량</h5>
                                                                    <p style="margin-bottom: 40px;">3kg</p>
                                                                </div>
                                                                <div>
                                                                    <h5 style="margin: 0 0 4px !important; font-weight: 600;">성분구성</h5>
                                                                    <p style="margin-bottom: 40px;">조단백 23.0%이상, 조지방
                                                                        12.0%이상, 조섬유 6.0%이하, 조회분 8.0%이하, 인 0.4%이하, 칼슘
                                                                        0.9%이상, 수분 12.0%이하</p>
                                                                </div>
                                                                <div>
                                                                    <h5 style="margin: 0 0 4px !important; font-weight: 600;">원료구성</h5>
                                                                    <p style="margin-bottom: 40px;">가수분해 오리고기, 닭살코기 분말,
								                                                                        현미, 고구마, 감자, 닭기름, 비트펄프, 통아마씨, 유카시디게라 추출물, 생선오일,
								                                                                        홍삼, 천일염, 프락토 올리고당, 타우린, 씨벅턴열매, 달맞이꽃 씨, 당근, 고수,
								                                                                        시금치, 메티오닌, 인산 칼슘, 유산균, 각종 비타민과 미네랄
								                                    </p>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div>
                                                            <h5 style="font-size: 15px; margin-bottom: 4px; font-weight: 600;">소비자 상담 전화번호</h5>
                                                            <p style="margin-bottom: 40px;">회사명 고객센터 1588-1234</p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="ques_ans" id="div2">
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
                                                    <dd style="padding: 2px 0 10px;">하루 이틀은 괜찮지만 고양이는 육식이기 때문에 강아지 사료를 먹이는 것은 추천하지 않습니다.</dd>
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
                        <div class="purchase_review" id="div3">
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
                                   <div class="warning_msg">별점을 선택해 주세요.</div>
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
                        <div class="cancel_return" id="div4">
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
		
		<!-- 별점 선택 기능 -->
		<script>
			function Rating(){};
			Rating.prototype.rate = 0;
			Rating.prototype.setRate = function(newrate){
				//별점 마킹 - 클릭한 별 이하 모든 별 체크
				this.rate = newrate;
				let items = document.querySelectorAll('.rate_radio');
				items.forEach(function(item, idx){
					if(idx < newrate) {
						item.checked = true;
					}
					else {
						item.checked = false;
					}
				});
			}
			let rating = new Rating(); //별점 인스턴스 생성
			
			document.addEventListener('DOMContentLoaded', function(){
				//별점선택 이벤트 리스너
				document.querySelector('.rating').addEventListener('click',function(e){
					let elem = e.target;
					if(elem.classList.contains('rate_radio')){
						rating.setRate(parseInt(elem.value));
					}
				})
			});
			
		    //저장 전송전 필드 체크 이벤트 리스너
		    document.querySelector('#save').addEventListener('click', function(e){
		        //별점 선택 안했으면 메시지 표시
		        if(rating.rate == 0){
		            rating.showMessage('rate');
		            return false;
		        }
		        //리뷰 5자 미만이면 메시지 표시
		        if(document.querySelector('.review_textarea').value.length < 5){
		            rating.showMessage('review');
		            return false;
		        }
		        //폼 서밋
		    });
			Rating.prototype.showMessage = function(type){//경고메시지 표시
			    switch(type){
			        case 'rate':
			            //안내메시지 표시
			            document.querySelector('.review_rating .warning_msg').style.display = 'block';
			            //지정된 시간 후 안내 메시지 감춤
			            setTimeout(function(){
			                document.querySelector('.review_rating .warning_msg').style.display = 'none';
			            },1000);            
			            break;
			        case 'review':
			            //안내메시지 표시
			            document.querySelector('.review_contents .warning_msg').style.display = 'block';
			            //지정된 시간 후 안내 메시지 감춤
			            setTimeout(function(){
			                document.querySelector('.review_contents .warning_msg').style.display = 'none';
			            },1000);    
			            break;
			    }
			}
		</script>
		
		<script>
			//sticky로 구성된 버튼 클릭 시 해당 페이지로 스크롤이 이동됨
			function fnMove(seq){
		        var position = $("#div" + seq).position();
		        $('html, body').animate({scrollTop : position.top}, 200);
	    	}

		</script>
		
		<script>
			//수량 버튼 클릭 시 수량 개수 감소
			$("#minus").click(function(){
				var num = $("#result").val();
				var minusNum = Number(num) - 1;
				if(minusNum <= 0) {
					$("#result").val(num);
				}
				else {
					$("#result").val(minusNum);
				}
			});
			//수량 버튼 클릭 시 수량 개수 증가
			$("#plus").click(function(){
				var num = $("#result").val();
				var plusNum = Number(num) + 1;
				if(plusNum >= "<c:out value='${vo.PSTOCK}' />") {
					$("#result").val(num);
				}
				else {
					$("#result").val(plusNum);
				}
			});
		</script>
		
		<script>
			//별점 구현 스크립트
			
		</script>
       <%@ include file="../incloud/footer.jsp" %>
