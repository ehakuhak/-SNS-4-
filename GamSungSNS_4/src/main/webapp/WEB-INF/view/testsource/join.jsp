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
	
	<br><br><br><br><br>
	
	<div class="row">
    <div class="col-sm-4"></div>
    <div class="col-sm-4"><h1>회원가입 페이지</h1></div>
    <div class="col-sm-4"></div>
  	</div>
  	<br>
	
	<form class="form-horizontal" role="form">

		<div class="form-group">
			<label class="control-label col-sm-5" for="email">아이디</label>
			<div class="col-sm-2">
				<input type="email" class="form-control" id="email"
					placeholder="사용가능한 email을 입력하세요.">
			</div>

		</div>
		
		<div class="form-group">
			<label class="control-label col-sm-5" for="pwd">비밀번호</label>
			<div class="col-sm-2">
				<input type="password" class="form-control" id="pwd"
					placeholder="비밀번호를 입력하세요.">
			</div>

		</div>
		
		<div class="form-group">
			<label class="control-label col-sm-5" for="pwd2">비밀번호 확인</label>
			<div class="col-sm-2">
				<input type="password" class="form-control" id="pwd2"
					placeholder="비밀번호를 확인하세요.">
			</div>

		</div>
		
		<div class="form-group">
			<label class="control-label col-sm-5" for="name">이름</label>
			<div class="col-sm-2">
				<input type="text" class="form-control" id="name"
					placeholder="이름을 입력하세요. (특수문자 불가)">
			</div>
		</div>
		
		<div class="form-group">
			<label class="control-label col-sm-5" for="birth">생년월일</label>
			<div class="col-sm-2">
				<input type="text" class="form-control" id="birth"
					placeholder="생년월일을 입력하세요.">
				<br>

				<button type="button" class="btn btn-info btn-primary btn-block">
					<span class="glyphicon glyphicon-plus-sign"></span>가입 하기
				</button>
				
				<button type="button" class="btn btn-info btn-primary btn-block">
					<span class="glyphicon glyphicon-pencil"></span>다시 작성
				</button>

			</div>
		</div>

	</form>
	
	

</body>
</html>