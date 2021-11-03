<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../incloud/header.jsp" %>

	<section>
     <div class="container">
          <div class="row">
              <div class="col-xs-12 content-wrap">
                  <div class="titlebox">
                      <p>공지사항 작성</p>
                  </div>
                <form action="noticeRegistForm" method="post"> 
                  <table class="table">
                      <tbody class="t-control">
                          <tr>
                              <td class="t-title">NAME</td>
                              <td><input class="form-control input-sm" name="writer1" value="${users.id }" required></td>
                          </tr>
                          <tr>
                              <td class="t-title">TITLE</td>
                              <td><input class="form-control input-sm" name="title" required></td>
                          </tr>
                          <tr>
                              <td class="t-title">COMMNET</td>
                              <td>
                              <textarea class="form-control" rows="7" name="content" ></textarea>
                              </td>                 
                          </tr>
                      </tbody>
                  </table>
                
                  <div class="titlefoot">
                      <button class="btn" type="submit">등록</button>
                      <button class="btn" type="button" onclick="location.href='notice'">목록</button>
                  </div>
                    </form> 
              </div>
          </div>    
     </div>
  </section>

<%@ include file="../incloud/footer.jsp" %>	
