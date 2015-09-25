<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<html>
<head>
<meta charset="utf-8">
<title>Welcome</title>
</head>
<body>
	페이지 구성을 index에서 로그인 쿠키가 남아있으면 메인 컨텐츠 화면, 로그인 기록이 없으면 로그인 페이지로 자동 리다이렉트
	한다.
	<br>
	<c:url value="/go?page=templet" var="messageUrl" />
	<a href="${messageUrl}">templet</a>
	<br>

	<c:url value="/go?page=registForm" var="messageUrl" />
	<a href="${messageUrl}">registForm</a>
	<br>

	<c:url value="/go?page=loginForm" var="messageUrl" />
	<a href="${messageUrl}">loginForm</a>
	<br>

	<c:url value="/showMessage.html" var="messageUrl" />
	<a href="${messageUrl}">Click to enter</a>
	<br> if(로그인 쿠기 있으면){
	<c:url value="/view?target=done" var="messageUrl" />
	<a href="${messageUrl}">메인 페이지</a>
	<br> }else(쿠기 기록 없으면){
	<c:url value="/view?target=undone" var="messageUrl" />
	<a href="${messageUrl}">로그인 페이지</a>
	<br> }
	<br>

	<c:url value="/go?page=serviceMain" var="messageUrl" />
	<a href="${messageUrl}">메인 테스트</a>
	<br>

	<c:url value="/go?page=join" var="messageUrl" />
	<a href="${messageUrl}">회원가입 테스트</a>
	<br>

	<c:url value="/go?page=userinfo" var="messageUrl" />
	<a href="${messageUrl}">회원정보 수정 테스트</a>
	<br>

	<c:url value="/go?page=findPass" var="messageUrl" />
	<a href="${messageUrl}">비밀번호 찾기 테스트</a>
	<br>

	<c:url value="/go?page=loging" var="messageUrl" />
	<a href="${messageUrl}">로그인시 메인 테스트</a>
	<br>



	<c:url value="/go?page=friend" var="messageUrl" />
	<a href="${messageUrl}">친구검색 테스트</a>
	<br>

	<c:url value="/go?page=myfriend" var="messageUrl" />
	<a href="${messageUrl}">등록된 친구 테스트</a>
	<br>

	<c:url value="/go?page=requestfriend" var="messageUrl" />
	<a href="${messageUrl}">친구 요청</a>
	<br>

	<c:url value="/go?page=board" var="messageUrl" />
	<a href="${messageUrl}">게시판 테스트</a>
	<br>

	<c:url value="/go?page=board" var="messageUrl" />
	<a href="${messageUrl}">게시판 테스트</a>
	<br>

	<c:url value="/go?page=insertboard" var="messageUrl" />
	<a href="${messageUrl}">게시판 등록하기 테스트</a>
	<br>

	<c:url value="/go?page=updateboard" var="messageUrl" />
	<a href="${messageUrl}">게시판 수정/삭제하기 테스트</a>
	<br>

	<c:url value="/go?page=emotionboardlist" var="messageUrl" />
	<a href="${messageUrl}">감정보드</a>
	<br>

	<c:url value="/go?page=myboard" var="messageUrl" />
	<a href="${messageUrl}">마이보드</a>
	<br>

	<c:url value="/go?page=selectboard" var="messageUrl" />
	<a href="${messageUrl}">보드리스트</a>
	<br>

	<c:url value="/go?page=sidebar" var="messageUrl" />
	<a href="${messageUrl}">sidebar 화면분할 테스트</a>
	<br>

	<c:url value="/go?page=header" var="messageUrl" />
	<a href="${messageUrl}">header 화면분할 테스트</a>
	<br>
	<c:url value="/go?page=body" var="messageUrl" />
	<a href="${messageUrl}">body 화면분할 테스트</a>
	<br>
	<c:url value="/go?page=test" var="messageUrl" />
	<a href="${messageUrl}">test</a>
	
	<c:url value="/go?page=emotionboardlist2" var="messageUrl" />
	<a href="${messageUrl}">감정보드</a>
	

</body>
</html>
