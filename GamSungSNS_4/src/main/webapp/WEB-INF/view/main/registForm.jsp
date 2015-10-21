<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script type="text/javascript">
	var regEmail = /([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/;
	var regPass =  /^.*(?=.{6,20})(?=.*[0-9])(?=.*[a-zA-Z]).*$/;
	var regName =  /[~!@\#$%^&*\()\-=+_']/gi;
	
	var t1 = false;
	var t2 = false;
	var t3 = false;
	var t4 = false;
	
	$(function(){
		$("input").keyup(function(){
			var _email = $("#remail");
			var _pass1 = $("#regPwd");
			var _pass2 = $("#regPwd2");
			var _name = $("#name");
			
			if(!regEmail.test(_email.val()) && (_email.val() != "")){
					$("#semail p").text("이메일을 입력해 주세요");
					t1 = false;
			}else if((_email.val() != "")){
				//여기서 ajax로 중복 아이디 확인해서 경고창
				$("#semail p").text("");
				t1 = true;
				
			}else{
				$("#semail p").text("");
				t1 = false;
			}
			
			if((!regPass.test(_pass1.val())) && (_pass1.val() != "") ){
				$("#spass1 p").text("6~20 글자 영문, 숫자 혼용");
				t2 = false;
			}else if((_pass1.val() != "")){
				$("#spass1 p").text("");
				t2 = true;
			}else{
				$("#spass1 p").text("");
				t2 = false;
			}
			
			
			if((_pass1.val() != _pass2.val()) && (_pass2.val() != "") ){
				$("#spass2 p").text("패스워드 확인");
				t3 = false;
			}else if((_pass2.val() != "")){
				$("#spass2 p").text("");
				t3 = true;
			}else{
				$("#spass2 p").text("");
				t3 = false;
			}
			
			if((regName.test(_name.val())) && (_name.val() != "")){
				$("#sname p").text("특수문자를 제외한 이름을 입력해 주세요");
				t4 = false;
			}else if((_pass2.val() != "")){
				$("#sname p").text("");
				t4 = true;
			}else{
				$("#sname p").text("");
				t4 = false;
			}
			
		});
	});
	
	$(document).ready(function(){
    	$("#button1").click(function(){
    		if(t1 == false || t2 == false || t3 == false || t4 == false){
    			$("#regError").text("nonono");
    		}else{
    			 var email = $("#remail").val();
    	       	 var pwd = $("#regPwd").val();
    	       	 var pwd2 = $("#regPwd2").val();
    	       	 var name = $("#name").val();
    	       	 var birth = $("#birth").val();
  
    	       	  $.post("<%=request.getContextPath()%>/regist", {
  		  	       	email : $("#remail").val(),
    		        pwd : $("#regPwd").val(),
    	    	    pwd2 : $("#regPwd2").val(),
    	        	name : $("#name").val(),
    	          	birth : $("#birth").val()
    	        	} , function(data, status){
    	            	alert("성공적으로 가입하셨습니다.");
    	            	window.location.replace("<%=request.getContextPath()%>/index.jsp");
    			});
    		} 
       	
		});
    	$("#rewriteButton").click(function(){
    		/* $("#remail").val("");
			$("#regPwd").val("");
			$("#regPwd2").val("");
			$("#name").val("");
			$("#birth").val(""); */
			$(this).removeData('bs.modal');
			
    	});	
	}); 				
	
</script>

<title>Insert title here</title>
</head>
<body>
	<c:url value="/regist" var="messageUrl" />
	<form action="${messageUrl}" method="post">
	<!-- Modal content-->
	<div class="modal-content">
		<div class="modal-header">
			<button type="button" class="close" data-dismiss="modal">&times;</button>
			<h4 class="modal-title">회원가입</h4>
		</div>
		<div class="modal-body">

		<!-- 	<form class="form-horizontal" role="form"> -->
				<div class="form-group">
					<label class="control-label col-sm-4" for="remail">아이디</label>
					<div class="col-sm-7">
						<input type="email" class="form-control" id="remail"
							placeholder="사용가능한 email을 입력하세요."/>
						<span id="semail"><p></p></span>
					</div>
					

				</div>

				<div class="form-group">
					<label class="control-label col-sm-4" for="regPwd">비밀번호</label>
					<div class="col-sm-7">
						<input type="password" class="form-control" id="regPwd"
							placeholder="비밀번호를 입력하세요." />
						<span id="spass1"><p></p></span>
					</div>

				</div>

				<div class="form-group">
					<label class="control-label col-sm-4" for="pwd2">비밀번호 확인</label>
					<div class="col-sm-7">
						<input type="password" class="form-control" id="regPwd2"
							placeholder="비밀번호를 확인하세요." />
						<span id="spass2"><p></p></span>
					</div>

				</div>

				<div class="form-group">
					<label class="control-label col-sm-4" for="name">이름</label>
					<div class="col-sm-7">
						<input type="text" class="form-control" id="name"
							placeholder="이름을 입력하세요. (특수문자 불가)">
						<span id="sname"><p></p></span>
					</div>
				</div>

				<div class="form-group">
					<label class="control-label col-sm-4" for="birth">생년월일</label>
					<div class="col-sm-7">
						<input type="date" class="form-control" id="birth"
							placeholder="생년월일을 입력하세요."> <br>
					</div>
				</div>

				<label></label>
				<div id="regError" align="center" style="color: red"></div>
				<button type="button" class="btn btn-info btn-primary btn-block"
					id="button1">
					<span class="glyphicon glyphicon-plus-sign"></span>가입 하기
				</button>

				<button type="button" class="btn btn-info btn-primary btn-block" id="rewriteButton">
					<span class="glyphicon glyphicon-pencil"></span>다시 작성
				</button>

		<!-- </form> -->
		</div>
		<div class="modal-footer">
			<button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
		</div>
	</div>
</form>
</body>
</html>