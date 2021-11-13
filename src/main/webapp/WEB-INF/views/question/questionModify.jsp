<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../incloud/header.jsp" %>

<body>
 
  <br><br><br><br><br><br><br><br><br>
      <!--게시판-->
      <section>
        <div class="container">
            <div class="row">
                <div class="col-xs-12 col-md-9 write-wrap">
                        <div class="titlebox">
                            <p>수정하기</p>
                        </div>
                        
                        <form action="questionUpdate" method="post">
                            <div>
                                <label>DATE</label>
                                <p>${vo.qregdate }</p>
                            </div>   
                            <div class="form-group">
                                <label>번호</label>
                                
                                <!-- readonly , disable(hidden으로 넘기기 -->
                                <input class="form-control" name='qno' value="${vo.qno }" readonly>
                            </div>
                            <div class="form-group">
                                <label>작성자</label>
                                <input class="form-control" name='qwriter' value="${vo.qwriter }" readonly required>
                            </div>    
                            <div class="form-group">
                                <label>제목</label>
                                <input class="form-control" name='qtitle' value="${vo.qtitle }" required>
                            </div>

                            <div class="form-group">
                                <label>내용</label>
                                <textarea class="form-control" rows="10" name='qcontent'>${vo.qcontent }</textarea>
                            </div>

                            <button type="button" class="btn btn-dark" onclick="location.href='question'">목록</button>    
                            <button type="submit" class="btn btn-primary">변경</button>
                            <button type="button" class="btn btn-info" onclick="location.href='questionDelete?qno=${vo.qno}'">삭제</button>
                    </form>
                                    
                </div>
            </div>
        </div>
      </section>
  <%@ include file="../incloud/footer.jsp" %>	
</body>
</html>