<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../incloud/header.jsp" %>

<body>
  <header id="container">
    <div class="total-wrap">
      <div class="header">
        <div class="img-header">
          <img src="/resources/img/KakaoTalk_20211021_110824073.png">
        </div>
        <div class="content-wrap">
          <div class="header-menu">
            <span>강아지</span>
            <span>고양이</span>
            <span>설문</span>
            <span>고객센터</span> 
          </div>
          <!-- <div class="users-function">
            <span>Login</span>
            <span>Join</span>
            <span>Cart</span>
          </div> -->
          <div class="users-function">
            <span>Mypage</span>
            <span>Profile</span>
            <span>Cart</span>
          </div>
        </div>  
      </div>
    </div>
  </header>
  <br><br><br>
      <!--게시판-->
      <section>
        <div class="container">
            <div class="row">
                <div class="col-xs-12 col-md-9 write-wrap">
                        <div class="titlebox">
                            <p>수정하기</p>
                        </div>
                        
                        <form action="freeUpdate" method="post">
                            <div>
                                <label>DATE</label>
                                <p>${vo.regdate }</p>
                            </div>   
                            <div class="form-group">
                                <label>번호</label>
                                
                                <!-- readonly , disable(hidden으로 넘기기 -->
                                <input class="form-control" name='bno' value="${vo.bno }" readonly>
                            </div>
                            <div class="form-group">
                                <label>작성자</label>
                                <input class="form-control" name='writer' value="${vo.writer }" required>
                            </div>    
                            <div class="form-group">
                                <label>제목</label>
                                <input class="form-control" name='title' value="${vo.title }" required>
                            </div>

                            <div class="form-group">
                                <label>내용</label>
                                <textarea class="form-control" rows="10" name='content'>${vo.content }</textarea>
                            </div>

                            <button type="button" class="btn btn-dark">목록</button>    
                            <button type="submit" class="btn btn-primary">변경</button>
                            <button type="button" class="btn btn-info" onclick="location.href='freeDelete?bno=${vo.bno}'">삭제</button>
                    </form>
                                    
                </div>
            </div>
        </div>
      </section>
      
  <%@ include file="../incloud/footer.jsp" %>	
</body>
</html>