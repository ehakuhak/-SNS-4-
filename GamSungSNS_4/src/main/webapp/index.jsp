<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html">

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
	
	<% if(session.getAttribute("loginNo") == null) {
			//로그인 기록이 없다면
			//로그인 화면으로 이동
			response.sendRedirect(request.getContextPath()+"/loginBoard");
		}else{
			//로그인 기록이 세션이 저장되어 있다면
			//메인 화면으로 이동
			response.sendRedirect(request.getContextPath()+"/mainBoard");
		}
	%>
</body>
</html>