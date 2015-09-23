<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:url value="/go?page=loging" var="loging" />
	<c:url value="/go?page=serviceMain" var="serviceMain" />
		
	<%
	
	String email = request.getParameter("email");
	String pwd = request.getParameter("pwd");
	
	if(email.equals("ginger@naver.com") && pwd.equals("1234")){
		session.setAttribute("email", email);
		response.sendRedirect("loging");
	} else {
		request.setAttribute("errMsg", "아이디 또는 비밀번호가 일치하지 않습니다.");
		RequestDispatcher rd = request.getRequestDispatcher("serviceMain.jsp");
		rd.forward(request, response);
	}
	
	%>

</body>
</html>