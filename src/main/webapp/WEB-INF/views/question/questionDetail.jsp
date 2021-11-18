s<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="../incloud/header.jsp"%>

<body>
	<div>
		<br><br><br><br><br><br><br><br><br>
		<section>
			<div class="container">
				<div class="row">
					<div class="col-xs-12 col-md-9 write-wrap">
						<div class="titlebox">
							<p>상세보기</p>
						</div>
						
						<form>
							<div>
								<label>DATE</label>
								<p>${qrlist[0].QREGDATE }</p>
							</div>
							<div class="form-group">
								<label>번호</label> <input class="form-control" name='qno'
									value="${qrlist[0].QNO }" readonly>
							</div>
							<div class="form-group">
								<label>작성자</label> <input class="form-control" name='qwriter'
									value="${qrlist[0].QWRITER }" readonly>
							</div>
							<div class="form-group">
								<label>제목</label> <input class="form-control" name='qtitle'
									value="${qrlist[0].QTITLE }" readonly>
							</div>

							<div class="form-group">
								<label>내용</label>
								<textarea class="form-control" rows="10" name='qcontent'
									readonly>${qrlist[0].QCONTENT }</textarea>
							</div>

							<button type="button" class="btn btn-primary"
								onclick="location.href='questionModify?qno=${qrlist[0].QNO}&qwriter=${qrlist[0].QWRITER }'">변경</button>
							<button type="button" class="btn btn-dark"
								onclick="location.href='question'">목록</button>
							<button type="button" class="btn btn-info"
								onclick="location.href='questionDelete?qno=${qrlist[0].QNO}'">삭제</button>
						</form>
					</div>
				</div>
			</div>
		</section>
	</div>
	
	<section style="margin-top: 80px;">
		<div class="container">
			<div class="row">
				<div class="col-xs-12 col-md-9 write-wrap">
					<form class="reply-wrap" action="questionReplyRegist" method="post">
						<div class="reply-image">
						</div>
						<!--form-control은 부트스트랩의 클래스입니다-->
						<div class="reply-content">
							<textarea class="form-control" rows="3" name="qrContent"></textarea>
							<div class="reply-group">
								<div class="reply-input">
									<input type="text" class="form-control" placeholder="닉네임" name="qrNicname" required>
									<input type="password" class="form-control" placeholder="비밀번호" name="qrPassword" required>
								</div>
								<button type="submit" class="right btn btn-info">등록하기</button>
								<input type="hidden" name="qno" value="${qrlist[0].QNO }"/>
							</div>
						</div>
					</form>
					<!--여기에접근 반복-->
					<c:choose>
					<c:when test="${qrlist[0].QRNO == null || empty qrlist[0].QRNO }">
					
					</c:when>
					
					
					<c:when test="${qrlist[0].QRNO != null || not empty qrlist[0].QRNO }">
					<c:forEach var="qrlist" items="${qrlist }">
						<div id="replyList">
							<div class='reply-wrap'>
								<div class='reply-image'>
									<img src='${pageContext.request.contextPath }/resources/img/profile.png'>
								</div>
								<div class='reply-content'>
									<div class='reply-group'>
										<strong class='left'>${qrlist.QRNICNAME }</strong> <small
											class='left'>${qrlist.QREGDATE }</small> 
										<a href='${qrlist.QRNO}' class='right xxx' data-toggle="modal" data-qrpassword='${qrlist.QRPASSWORD }' data-qno='${qrlist.QNO }'  data-qrno='${qrlist.QRNO }'>
											<span class='glyphicon glyphicon-pencil' 
											<%-- onclick=" location.href='questionReplyUpdate?qno=${qrlist.QNO }&&qrno=${qrlist.QRNO}'" --%>>
											</span>수정</a>
										<a href='##' class='right' onclick="location.href='questionReplyDelete?qno=${qrlist.QNO }&&qrno=${qrlist.QRNO}'">
											<span class='glyphicon glyphicon-remove'></span>삭제</a>
									</div>
									<p class='clearfix'>${qrlist.QRCONTENT }</p>
								</div>
							</div>
						</div>
					</c:forEach>
					</c:when>
					</c:choose>
				</div>
			</div>
		</div>
	</section>
	
	<form action="questionReplyUpdate" method="post">
		<div class="modal fade" id="replyModal" role="dialog">
			<div class="modal-dialog modal-md">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="btn btn-default pull-right"
							data-dismiss="modal">닫기</button>
						<h4 class="modal-title">댓글수정</h4>
					</div>
					<div class="modal-body">
						<!-- 수정폼 id값을 확인하세요-->
						<div class="reply-content">
							<textarea class="form-control" rows="4" id="modalReply" name="qrContent"
								placeholder="내용입력"></textarea>
							<div class="reply-group">
								<div class="reply-input">
									<input type="hidden" id="modalRno"> <input
										type="password" class="form-control" placeholder="비밀번호"
										id="modalPw" name="qrPassword">
								</div>
								<input type="hidden" id="qNo" name="qno" value="${qrlist[0].QNO }"/>
								<input type="hidden" id="qrNo" name="qrNo" value="${qrlist[0].QRNO }"/>
								<input type="hidden" name="qrNicname" value="${qrlist[0].QRNICNAME }"/>
								<input type="hidden" name="qrPassword" value="${qrlist[0].QRPASSWORD }"/>
								<button type="submit" class="right btn btn-info"
										id="modalModBtn">수정하기</button>
								<button type="submit" class="right btn btn-info modalDelBtn" id="modalDelBtn">삭제하기</button>
								<%-- 상기 삭제하기 버튼은 관리자만이 볼 수 있는 버튼 --%>
							</div>
						</div>
						<!-- 수정폼끝 -->
					</div>
				</div>
			</div>
		</div>
	</form>
	
	<script>
	
	var qno;
	var qrno;
	var qrpassword;
	
	$(".xxx").click(function(){
		event.preventDefault();
		//1.클릭한 대상의 data-qrno의 값을 얻느다
		//2.1번의 값을 replyModal의 hidden에 넣는다.
		$("#replyModal").modal();
		qno = $(this).attr("data-qno");
		qrno = $(this).attr("data-qrno");
		qrpassword = $(this).attr("data-qrpassword");
		
	});
	
	$("#modalModBtn").click(function(e){
		$("#qrNo").val(qrno);
		
		var getpass = $("#modalPw").val();
		
		if(qrpassword != getpass){
			alert('비밀번호 재입력 요망');
			e.preventDefault();
			
			
		}else{
			alert('수정되었습니다');
		}
		
		console.log(qno);
		console.log(qrno);
		
	});
	
	$(".modalDelBtn").click(function(e){
		
		var getpass = $("#modalPw").val();
		var getQno = $("#qNo").val();
		var getQrno = $("#qrNo").val();
		
		if(qrpassword != getpass){
			alert('비밀번호 재입력 요망');
			e.preventDefault();
		}else{
			alert('삭제되었음');
			location.href="questionReplyDelete?qno="
							+ getQno + "&qrno=" + getQrno;
					
		}
		console.log(getpass);
		console.log(getQno);
		console.log(getQrno);
		
		
	});
	
	
	</script>
	
	<%@ include file="../incloud/footer.jsp"%>