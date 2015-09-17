<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
</style>

<title>Insert title here</title>
</head>
<body>
	<h1>메인페이지</h1>
	<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>

	<form class="form-horizontal" role="form">

		<div class="form-group">
			<label class="control-label col-sm-5" for="email"></label>
			<div class="col-sm-2">
				<input type="email" class="form-control" id="email"
					placeholder="아이디">
			</div>

		</div>

		<div class="form-group">
			<label class="control-label col-sm-5" for="pwd"></label>
			<div class="col-sm-2">
				<input type="password" class="form-control" id="pwd"
					placeholder="비밀번호"> <br>

				<button type="button" class="btn btn-info btn-primary btn-block">
					<span class="glyphicon glyphicon-user"></span>로그인
				</button>
				<button type="button" class="btn btn-info btn-primary btn-block">
					<span class="glyphicon glyphicon-plus-sign"></span>회원 가입
				</button>
				<button type="button" class="btn btn-info btn-primary btn-block">
					<span class="glyphicon glyphicon-search"></span>분실
				</button>

			</div>
		</div>

	</form>


</body>
</html>