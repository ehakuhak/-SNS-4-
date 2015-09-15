<!DOCTYPE html>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<html>
	<head>
		<meta charset="utf-8">
		<title>Welcome</title>
	</head> 
	<body>
		페이지 구성을 index에서 로그인 쿠키가 남아있으면 메인 컨텐츠 화면,
		로그인 기록이 없으면 로그인 페이지로 자동 리다이렉트 한다. <br>
		<c:url value="/go?page=templet" var="messageUrl" />
		<a href="${messageUrl}">templet</a><br>
		
		<c:url value="/go?page=registForm" var="messageUrl" />
		<a href="${messageUrl}">registForm</a><br>
		
		<c:url value="/go?page=loginForm" var="messageUrl" />
		<a href="${messageUrl}">loginForm</a><br>
		
		<c:url value="/showMessage.html" var="messageUrl" />
		<a href="${messageUrl}">Click to enter</a><br>
	 	if(로그인 쿠기 있으면){
			<c:url value="/view?target=done" var="messageUrl" />
			<a href="${messageUrl}">메인 페이지</a><br>	
		}else(쿠기 기록 없으면){
			<c:url value="/view?target=undone" var="messageUrl" />
			<a href="${messageUrl}">로그인 페이지</a><br>
		}
		<br>
		
		<c:url value="/go?page=main" var="messageUrl" />
		<a href="${messageUrl}">메인 테스트</a><br>
		
	</body>
</html>
