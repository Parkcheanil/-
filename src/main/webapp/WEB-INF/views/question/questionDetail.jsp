<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../incloud/header.jsp" %>

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
              <p>${vo.qregdate }</p>
            </div>   
            <div class="form-group">
              <label>번호</label>
              <input class="form-control" name='qno' value="${vo.qno }" readonly>
            </div>
            <div class="form-group">
              <label>작성자</label>
              <input class="form-control" name='qwriter' value="${vo.qwriter }" readonly>
            </div>    
            <div class="form-group">
              <label>제목</label>
              <input class="form-control" name='qtitle' value="${vo.qtitle }" readonly>
            </div>
            
            <div class="form-group">
              <label>내용</label>
              <textarea class="form-control" rows="10" name='qcontent' 
              readonly>${vo.qcontent }</textarea>
            </div>
            
            <button type="button" class="btn btn-primary" onclick="location.href='questionModify?qno=${vo.qno}&qwriter=${vo.qwriter }'">변경</button>
            <button type="button" class="btn btn-dark" onclick="location.href='question'">목록</button>
          </form>
        </div>
      </div>
    </div>
  </section>
</div>
<%@ include file="../incloud/footer.jsp" %>	
