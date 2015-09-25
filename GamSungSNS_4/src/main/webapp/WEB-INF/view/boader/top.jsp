<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@page import="java.util.Map"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:url value="/logout" var="logout" />
	<nav class="navbar navbar-bright navbar-fixed-top" role="banner">
		<div class="container">
			<a class="navbar-toggle" data-toggle="collapse"
				data-target=".nav-collapse"> <span
				class="glyphicon glyphicon-chevron-down"></span>
			</a>
			<div class="nav-collapse collase">
				<ul class="nav navbar-nav">
					<li><br> <img src="images/logo2.jpg"
						style="margin-top: -10px; width: 70px; height: 30px"></li>
					<li><form class="navbar-form navbar-left">
							<div class="input-group input-group-sm" style="max-width: 360px;">
								<input type="text" class="form-control" placeholder="검색"
									name="srch-term" id="srch-term">
								<div class="input-group-btn">
									<button class="btn btn-info" type="button">
										<i class="glyphicon glyphicon-search"></i>
									</button>
								</div>
							</div>
						</form></li>
					<li><a href="#">Link</a></li>
				</ul>
				<ul class="nav navbar-right navbar-nav">

					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown"><i class="glyphicon glyphicon-user">
								<%
									Map<String, Object> map = (Map) session.getAttribute("user");
									String id = (String)map.get("user_id");
									//String id = (String) session.getAttribute("email");
								%> <%=id%>
						</i> <i class="glyphicon glyphicon-chevron-down"></i></a>
						<ul class="dropdown-menu">
							<li><a href="#" data-toggle="modal"
								data-target="#friendModal">친구관리</a></li>
							<li><a href="#" data-toggle="modal"
								data-target="#userinfoModal">회원정보</a></li>
							<li class="divider"></li>
							<li><a href="${logout}">로그아웃</a></li>
						</ul></li>
				</ul>
			</div>
		</div>
	</nav>
</body>
</html>