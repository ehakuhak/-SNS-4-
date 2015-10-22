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

<!-- Bootstrap Core CSS file -->
<link rel="stylesheet" href="css/bootstrap.min.css">
<link href="css/fileinput.min.css" media="all" rel="stylesheet" type="text/css" />
<!-- Override CSS file - add your own CSS rules -->
<link rel="stylesheet" href="css/styles.css">


<!-- JQuery scripts -->
	<script src="js/jquery-1.11.2.min.js"></script>
<!-- Bootstrap Core scripts -->
	<script src="js/bootstrap.min.js"></script>
	<script src="js/fileinput.min.js"></script>
	<script src="js/fileinput_locale_LANG.js"></script>
	
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

body {
	background-image: url("images/backimg.gif");
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
	<div class="col-lg-12 col-sm-12 col-md-12">
		<div class="container-fluid">
			<div class="row">
				<div class="col-lg-12" align="center">
					<input type="email" class="form-control fsize" id="email" name="email"
						placeholder="아이디">
				</div>
			</div>
			
			<div class="row">
				<div class="col-lg-12" align="center">
					<input type="password" class="form-control fsize" id="pwd" name="pwd"
						placeholder="비밀번호"> <br>
					<div id="error"><%=errMsg %></div>
				</div>
			</div>
						
				<!-- <label class="control-label col-sm-5" for="error"></label>
				<input type="text" readonly="readonly" id="error"> -->
			<div class="row">
				<button type="button" class="btn btn-info bsize" id="buttion1">
					<span class="glyphicon glyphicon-user"></span>로그인
				</button>
			</div>	
			
			<div class="row">	
				<button type="button" class="btn btn-info bsize"
					data-toggle="modal" data-target="#joinModal">
					<span class="glyphicon glyphicon-plus-sign"></span>회원 가입
				</button>
			</div>
			
			<div class="row">
				<button type="button" class="btn btn-info bsize" data-toggle="modal" data-target="#findpassModal">
					<span class="glyphicon glyphicon-search"></span>분실
				</button>
			</div>
			
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