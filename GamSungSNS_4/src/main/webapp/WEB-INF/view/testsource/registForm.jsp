<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<title>Insert title here</title>
</head>
<body>
	<c:url value="/regist" var="messageUrl" />
	<form action="${messageUrl}" method="post">
		<fieldset>
			<legend>가입</legend>
			<label for="id">email</label><input type="email" id="id" name="userId"> <br>
			<label for="pass">pass</label><input type="password" id="pass" name="password"> <br>
			<label for="name">name</label><input type="text" id="name" name="name"> <br>
			<label for="birth">birth</label><input type="text" id="birth" name="birth"> <br>
			<input type="submit">
		</fieldset>
	</form>
</body>
</html>