<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
<html>
<head>
<%
session.invalidate();
%>	
<%
		RequestDispatcher rd = request.getRequestDispatcher("serviceMain.jsp");
		rd.forward(request, response);
%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
</body>
</html>