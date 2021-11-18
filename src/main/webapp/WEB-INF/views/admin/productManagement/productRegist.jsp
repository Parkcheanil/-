<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
 <!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/bootstrap.css">
	<%@ include file="../include/adminHeader.jsp" %>
</head>   
<body>
	<div class="product_intable">
		<hr><h4>상품등록</h4><hr>
	   		<form action="pinsertForm" method="post" enctype="multipart/form-data">
	   				<br>
	   				<!-- 
	   				<label>1차분류</label>
	   				<select class="category1">
	   					<option value="A">전체</option>
	   					<option value="C">고양이</option>
	   					<option value="D">강아지</option>
	   					<option></option>
	   				</select> &nbsp;&nbsp;
	   				<label>2차분류</label>
	   				<select class="category2">
	   					<option value="">전체</option>
	   				</select>&nbsp;&nbsp; -->
	   				<label>연령</label>
	   				<select name="petage">
	   					<option value="전연령">전연령</option>
	   					<option value="어덜트">어덜트</option>
	   					<option value="시니어">시니어</option>
	   				</select>
	   				<table>
	   					<tr>
	   						<td>상품ID</td>
	   						<td><input type="text" class="form-control" name="pid"/></td>
	   					</tr>
	   					<tr>
	   						<td>상품명</td>
	   						<td><input type="text" class="form-control" name="pname"/></td>
	   					</tr>
	   					<tr>
	   						<td>가격</td>
	   						<td><input type="text" class="form-control" name="pprice"/></td>
	   					</tr>
	   					<tr>
	   						<td>수량</td>
	   						<td><input type="text" class="form-control" name="pstock"/></td>
	   					</tr>
	   					<tr>
	   						<td>상품정보</td>
	   						<td><textarea class="form-control" rows="10" name="pdetail"></textarea></td>
	   					</tr>
	   					<tr>
	   						<td>상품이미지</td>
	   						<td><input type="file" class="form-control" id="pimage" name="file"/></td>
	   					</tr>
	   				</table>
	   				 <br>
	   				 <div class="text-end">
				   	<button type="submit" class="pinsertBtn btn_primary">확인</button>
				   	<button type="button" class="btn_primary" onclick="location.href='productManagementBoard'">목록</button>  
				   	</div>
	   		</form>
	   	</div>
	
</body>
<script>

/*var regExp = /[^0-9]/gi;

$("#pprice").keyup(function(){ numCheck($(this)); });
$("#pstock").keyup(function(){ numCheck($(this)); });

function numCheck(selector) {
 var tempVal = selector.val();
 selector.val(tempVal.replace(regExp, ""));
}

  $("#pimage").change(function(){
   if(this.files && this.files[0]) {
    var reader = new FileReader;
    reader.onload = function(data) {
     $(".select_img img").attr("src", data.target.result).width(500);        
    }
    reader.readAsDataURL(this.files[0]);
   }
  });*/
 </script>
<script>
$(".pinsertBtn").click(function() {
   /* var imgs = $("#pimage").val();
    
    //확장자체크
    var first = imgs.lastIndexOf(".");
    var last = imgs.length;
    var file  = imgs.substring(first, last).toLowerCase();
    //유효성 검증         
    if(file != '.jpg' && file != '.png' && file != '.bmp') {
       alert("jpg, png, bmp만 업로드가 가능합니다.");
       return; //함수종료
    }*/
    
    var formData = new FormData();
    formData.append("file", $("#file")[0].files[0]); //파일데이터
    
    //폼데이터를 컨트롤러로 전송(비동기)
    $.ajax({
       url: "upload",
       type: "post",
       processData: false, //변수=값 으로 자동형변환되는 것을 막음
       contentType: false, //기본형 폼데이터형식으로 선언됨
       data: formData,
       success : function(data) {
          //성공 실패 여부에 따라 처리 결정.
          if(data == "success") {
        	  alert("정상 틍록 처리 되었습니다.");
        	  $("#file").val("");
        	  productManagement(true);
          }
          else {//fail
        	  alert("서버 상 문제가 발생하였습니다. 다시 시도하세요");
          }
       },
       error : function(error) {
          console.log(error);
       }
    });         
    
 });
</script>
</html>