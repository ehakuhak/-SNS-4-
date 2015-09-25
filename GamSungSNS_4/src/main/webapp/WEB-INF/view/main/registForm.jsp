<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
    	$("#button1").click(function(){
       	// alert(	"The paragraph was clicked.");
       	 var email = $("#regEmail").val();
       	 var pwd = $("#regPwd").val();
       	 var pwd2 = $("#regPwd2").val();
       	 var name = $("#name").val();
       	 var birth = $("#birth").val();
       	 if(email == null || pwd == null || pwd2 == null || name == null || birth == null){
       		 alert("get out!");
       	 }else{
       	 //console.log("ee + " + abcd + " + dd");
       	  $.post("<%=request.getContextPath()%>/regist",
        {
          /* name: "Donald Duck",
          city: "Duckburg", */
       	  email : $("#remail").val(),
          pwd : $("#regPwd").val(),
          pwd2 : $("#regPwd2").val(),
          name : $("#name").val(),
          birth : $("#birth").val()
        } ,
        function(data, status){
            alert("Data: "+ data + "\nStatus: " + status);
            
            window.location.replace("<%=request.getContextPath()%>/"+data);
        } );
       	 }
  	  });
	});
</script>
<title>Insert title here</title>
</head>
<body>
	<c:url value="/regist" var="messageUrl" />
	<%-- <form action="${messageUrl}" method="post"> --%>
		<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title">회원가입</h4>
				</div>
				<div class="modal-body">

					<form class="form-horizontal" role="form">

						<div class="form-group">
							<label class="control-label col-sm-4" for="remail">아이디</label>
							<div class="col-sm-7">
								<input type="email" class="form-control" id="remail"
									placeholder="사용가능한 email을 입력하세요.">
							</div>

						</div>

						<div class="form-group">
							<label class="control-label col-sm-4" for="regPwd">비밀번호</label>
							<div class="col-sm-7">
								<input type="password" class="form-control" id="regPwd"
									placeholder="비밀번호를 입력하세요.">
							</div>

						</div>

						<div class="form-group">
							<label class="control-label col-sm-4" for="pwd2">비밀번호 확인</label>
							<div class="col-sm-7">
								<input type="password" class="form-control" id="regPwd2"
									placeholder="비밀번호를 확인하세요.">
							</div>

						</div>

						<div class="form-group">
							<label class="control-label col-sm-4" for="name">이름</label>
							<div class="col-sm-7">
								<input type="text" class="form-control" id="name"
									placeholder="이름을 입력하세요. (특수문자 불가)">
							</div>
						</div>

						<div class="form-group">
							<label class="control-label col-sm-4" for="birth">생년월일</label>
							<div class="col-sm-7">
								<input type="date" class="form-control" id="birth"
									placeholder="생년월일을 입력하세요."> <br>
							</div>
						</div>
	
						<label ></label>
						
						<button type="button" class="btn btn-info btn-primary btn-block" id="button1">
							<span class="glyphicon glyphicon-plus-sign"></span>가입 하기
						</button>

						<button type="button" class="btn btn-info btn-primary btn-block">
							<span class="glyphicon glyphicon-pencil"></span>다시 작성
						</button>

					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
				</div>
			</div>
	<!-- </form> -->
</body>
</html>