<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html">
<%-- <%
	if (session.getAttribute("email") != null) {
		RequestDispatcher rd = request.getRequestDispatcher("loging.jsp");
		rd.forward(request, response);
	}
%> --%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<!-- Latest compiled JavaScript -->
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>

<script type="text/javascript">
	$(document).ready(function(){
		$("#buttion1").on("click", function(){
			var data = {id:$("#email").val(), pass:$("#pwd").val()};
			$.ajax({
				type:"post",
				url:"<%=request.getContextPath()%>/login",
				data:data,
				success:function(responseTxt){
					var result = responseTxt["result"];
					if(result=="success"){
						//$("#error").html("hi");
						 window.location.replace("<%=request.getContextPath()%>/log");
					}else{
						$("#error").html("아이디와 패스워드를 확인해 주세요!");
					}
				},
				error:function(xhr, status, error){
					console.log("error : " + error);
				}
			})
		})
	})
</script>
<style type="text/css">
h1 {
	color: orange;
}

body {
	background-image: url("images/logo.jpg");
	background-repeat: no-repeat;
	background-position: center;
	
	margin-top: 350px;
}

</style>

<title>Insert title here</title>

</head>
<body>
<%
	String errMsg = (String)request.getAttribute("errMsg");
	if(errMsg==null){
		errMsg="";
	}
%>
<c:url value="/login" var="process" />

	<form class="form-horizontal" role="form" id="loginForm" method="post" action="${process}">

		<div class="form-group">
			<label class="control-label col-sm-5" for="email"></label>
			<div class="col-sm-2">
				<input type="email" class="form-control" id="email" name="email"
					placeholder="아이디">
			</div>

		</div>

		<div class="form-group">
			<label class="control-label col-sm-5" for="pwd"></label>
			<div class="col-sm-2" >
				<input type="password" class="form-control" id="pwd" name="pwd"
					placeholder="비밀번호"> <br>
				<div id="error"><%=errMsg %></div>
				
				<!-- <label class="control-label col-sm-5" for="error"></label>
				<input type="text" readonly="readonly" id="error"> -->
				<button type="button" class="btn btn-info btn-primary btn-block" id="buttion1">
					<span class="glyphicon glyphicon-user"></span>로그인
				</button>
				
				
				<button type="button" class="btn btn-info btn-primary btn-block"
					data-toggle="modal" data-target="#joinModal">
					<span class="glyphicon glyphicon-plus-sign"></span>회원 가입
				</button>
				<button type="button" class="btn btn-info btn-primary btn-block" data-toggle="modal" data-target="#findpassModal">
					<span class="glyphicon glyphicon-search"></span>분실
				</button>

			</div>
		</div>

	</form>


	<!-- Modal -->
	<div id="joinModal" class="modal fade" role="dialog">
		<div class="modal-dialog">
			<jsp:include page="registForm.jsp"></jsp:include>
		</div>
	</div>

	<!-- Modal -->
	<div id="findpassModal" class="modal fade" role="dialog">
		<div class="modal-dialog">
			<jsp:include page="findUser.jsp"></jsp:include>
		</div>
	</div>

</body>
</html>