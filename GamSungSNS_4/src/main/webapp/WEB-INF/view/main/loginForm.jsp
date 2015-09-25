<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%
	String errMsg = (String)request.getAttribute("errMsg");
	if(errMsg==null){
		errMsg="";
	}
%>
<title>Insert title here</title>
</head>
<body>
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
			<div class="col-sm-2">
				<input type="password" class="form-control" id="pwd" name="pwd"
					placeholder="비밀번호"> <br>
				<div id="error"><%=errMsg %></div>
				<button type="submit" class="btn btn-info btn-primary btn-block">
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
</body>
</html>