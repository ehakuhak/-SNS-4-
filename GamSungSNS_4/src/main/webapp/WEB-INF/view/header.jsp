<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
<link href="css/header.css" media="all" rel="stylesheet" type="text/css" />
<title>Insert title here</title>
<script>
	$(document).ready(function() {
		$('#sidebar').affix({
			offset : {
				top : -1
			}
		});

	});
</script>
</head>
<body>
	<nav class="navbar navbar-bright navbar-fixed-top" role="banner">
	<div class="container">
		<a class="navbar-toggle" data-toggle="collapse"
			data-target=".nav-collapse"> <span
			class="glyphicon glyphicon-chevron-down"></span>
		</a>
		<div class="nav-collapse collase">
			<ul class="nav navbar-nav">
				<li><br>로고삽입</li>
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
					</form>
			</ul>
			<ul class="nav navbar-right navbar-nav">

				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown"><i class="glyphicon glyphicon-user">사용자
							닉네임</i> <i class="glyphicon glyphicon-chevron-down"></i></a>
					<ul class="dropdown-menu">
						<li><a href="#">친구관리</a></li>
						<li><a href="#">회원정보 수정</a></li>
						<li class="divider"></li>
						<li><a href="#">로그아웃</a></li>
					</ul></li>
			</ul>
		</div>
	</div>
	</nav>
</body>
</html>