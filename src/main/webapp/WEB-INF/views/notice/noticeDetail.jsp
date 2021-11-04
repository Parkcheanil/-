<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../incloud/header.jsp" %>

<body>
  <div>
    
  <br><br><br><br><br><br><br><br><br><br><br><br>
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
              <p>${vo.regdate }</p>
            </div>   
            <div class="form-group">
              <label>번호</label>
              <input class="form-control" name='bno' value="${vo.bno }" readonly>
            </div>
            <div class="form-group">
              <label>작성자</label>
              <input class="form-control" name='writer' value="${vo.writer }" readonly>
            </div>    
            <div class="form-group">
              <label>제목</label>
              <input class="form-control" name='title' value="${vo.title }" readonly>
            </div>
            
            <div class="form-group">
              <label>내용</label>
              <textarea class="form-control" rows="10" name='content' 
              readonly>${vo.content }</textarea>
            </div>
            
            <button type="button" class="btn btn-primary" onclick="location.href='noticeModify?bno=${vo.bno}&writer=${vo.writer }' ">변경</button>
            <button type="button" class="btn btn-dark" onclick="location.href='notice'">목록</button>
          </form>
        </div>
      </div>
    </div>
  </section>
</div>
<%@ include file="../incloud/footer.jsp" %>	
