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
<script>
$(document).ready(function() {
	$('#sidebar').affix({
		offset : {
			top : 240
		}
	});

});
</script>
<title>Insert title here</title>

<style>
/* bootstrap 3 helpers */
.navbar-form input, .form-inline input {
	width: auto;
}

/* end */

/* custom theme */
header {
	min-height: 230px;
	margin-bottom: 5px;
}

@media ( min-width : 979px) {
	#sidebar.affix-top {
		position: static;
	}
	#sidebar.affix {
		position: fixed;
		top: 0;
		width: 21.2%;
	}
}

.affix, .affix-top {
	position: static;
}

/* theme */
body {
	color: #828282;
	background-color: #eee;
}

a, a:hover {
	color: #ff3333;
	text-decoration: none;
}

.highlight-bk {
	background-color: #ff3333;
	padding: 1px;
	width: 100%;
}

.highlight {
	color: #ff3333;
}

h3.highlight {
	padding-top: 13px;
	padding-bottom: 14px;
	border-bottom: 2px solid #ff3333;
}

.navbar {
	background-color: #ff3333;
	color: #ffffff;
	border: 0;
	border-radius: 0;
}

.navbar-nav>li>a {
	color: #fff;
	padding-left: 20px;
	padding-right: 20px;
	border-left: 1px solid #ee3333;
}

.navbar-nav>li>a:hover, .navbar-nav>li>a:focus {
	color: #666666;
}

.navbar-nav>li:last-child>a {
	border-right: 1px solid #ee3333;
}

.navbar-nav>.active>a, .navbar-nav>.active>a:hover, .navbar-nav>.active>a:focus
	{
	color: #ffffff;
	background-color: transparent;
}

.navbar-nav>.open>a, .navbar-nav>.open>a:hover, .navbar-nav>.open>a:focus
	{
	color: #f0f0f0;
	background-color: transparent;
	opacity: .9;
	border-color: #ff3333;
}

.nav .open>a {
	border-color: #777777;
	border-width: 0;
}

.accordion-group {
	border-width: 0;
}

.dropdown-menu {
	min-width: 250px;
}

.accordion-heading .accordion-toggle, .accordion-inner, .nav-stacked li>a
	{
	padding-left: 1px;
}

.caret {
	color: #fff;
}

.navbar-toggle {
	color: #fff;
	border-width: 0;
}

.navbar-toggle:hover {
	background-color: #fff;
}

.panel {
	padding-left: 27px;
	padding-right: 27px;
}

.row-1 {
	display: flex;
}

.row-2 {
	display: flex;
}

.row-3 {
	display: flex;
}

/* end theme */
</style>
</head>
<body>
	<nav class="navbar navbar-static">
	<div class="container">
		<a class="navbar-toggle" data-toggle="collapse"
			data-target=".nav-collapse"> <span
			class="glyphicon glyphicon-chevron-down"></span>
		</a>
		<div class="nav-collapse collase">
			<ul class="nav navbar-nav">
				<li><a href="#">Home</a></li>
				<li><a href="#">Link</a></li>
				<li><a href="#">Link</a></li>
			</ul>
			<ul class="nav navbar-right navbar-nav">
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown"><i class="glyphicon glyphicon-search"></i></a>
					<ul class="dropdown-menu" style="padding: 12px;">
						<form class="form-inline">
							<div class="input-group">
								<input type="text" class="form-control" placeholder="Search">
								<div class="input-group-btn">
									<button type="submit" class="btn btn-default">
										<i class="glyphicon glyphicon-search"></i>
									</button>
								</div>
							</div>
						</form>
					</ul></li>
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown"><i class="glyphicon glyphicon-user"></i>
						<i class="glyphicon glyphicon-chevron-down"></i></a>
					<ul class="dropdown-menu">
						<li><a href="#">Login</a></li>
						<li><a href="#">Profile</a></li>
						<li class="divider"></li>
						<li><a href="#">About</a></li>
					</ul></li>
			</ul>
		</div>
	</div>
	</nav>
	<!-- >/.navbar -->

	<header class="masthead">
	<div class="container">
		<div class="row">
			<div class="col col-sm-6">
				<h1>
					<a href="#" title="scroll down for your viewing pleasure">BNW
						Template</a>
					<p class="lead">2-column Layout + Theme for Bootstrap 3</p>
				</h1>
			</div>
			<div class="col col-sm-6">
				<div class="well pull-right">
					<img src="//placehold.it/280x100/E7E7E7">
				</div>
			</div>
		</div>
	</div>


	</header>

	<!-- Begin Body -->
	<div class="container">
		<div class="row">
			<div class="col col-sm-3">
				<div id="sidebar">
					<ul class="nav nav-stacked">
						<li><h3 class="highlight">
								Channels <i class="glyphicon glyphicon-dashboard pull-right"></i>
							</h3></li>
						<li><a href="#">Link</a></li>
						<li><a href="#">Link</a></li>
						<li><a href="#">Link</a></li>
						<li><a href="#">Link</a></li>
						<li><a href="#">Link</a></li>
						<li><a href="#">Link</a></li>
						<li><a href="#">Link</a></li>

					</ul>
				</div>
			</div>
			<div class="col col-sm-9">
				<div class="panel">
					<div class="row-1">
						<div class="col-md-3">
							<a href="pulpitrock.jpg" class="thumbnail">
								<p>게시물 내용을 출력할 것이며 기본적으로 본문의 내용과 동영상</p> <img
								src="pulpitrock.jpg" alt="Pulpit Rock"
								style="width: 175px; height: 175px">
							</a> <a href="pulpitrock.jpg" class="thumbnail">
								<p>게시물 내용을 출력할 것이며 사진을 바로 클릭하면 게시물 전체화면</p> <img
								src="pulpitrock.jpg" alt="Pulpit Rock"
								style="width: 175px; height: 175px">
							</a> <a href="pulpitrock.jpg" class="thumbnail">
								<p>게시물 내용을 출력할 것이며 사진을 바로 클릭하면 게시물 전체화면</p> <img
								src="pulpitrock.jpg" alt="Pulpit Rock"
								style="width: 175px; height: 175px">
							</a> <a href="pulpitrock.jpg" class="thumbnail">
								<p>게시물 내용을 출력할 것이며 사진을 바로 클릭하면 게시물 전체화면</p> <img
								src="pulpitrock.jpg" alt="Pulpit Rock"
								style="width: 175px; height: 175px">
							</a>
						</div>
						</div>

						<div class="row-2">
							<div class="col-md-3">
								<a href="pulpitrock.jpg" class="thumbnail">
									<p>게시물 내용을 출력할 것이며 기본적으로 본문의 내용과 동영상</p> <img
									src="pulpitrock.jpg" alt="Pulpit Rock"
									style="width: 175px; height: 175px">
								</a> <a href="pulpitrock.jpg" class="thumbnail">
									<p>게시물 내용을 출력할 것이며 사진을 바로 클릭하면 게시물 전체화면</p> <img
									src="pulpitrock.jpg" alt="Pulpit Rock"
									style="width: 175px; height: 175px">
								</a> <a href="pulpitrock.jpg" class="thumbnail">
									<p>게시물 내용을 출력할 것이며 사진을 바로 클릭하면 게시물 전체화면</p> <img
									src="pulpitrock.jpg" alt="Pulpit Rock"
									style="width: 175px; height: 175px">
								</a> <a href="pulpitrock.jpg" class="thumbnail">
									<p>게시물 내용을 출력할 것이며 사진을 바로 클릭하면 게시물 전체화면</p> <img
									src="pulpitrock.jpg" alt="Pulpit Rock"
									style="width: 175px; height: 175px">
								</a>
							</div>
							</div>

							<div class="row-3">
								<div class="col-md-3">
									<a href="pulpitrock.jpg" class="thumbnail">
										<p>게시물 내용을 출력할 것이며 사진을 바로 클릭하면 게시물 전체화면</p> <img
										src="pulpitrock.jpg" alt="Pulpit Rock"
										style="width: 175px; height: 175px">
									</a> <a href="pulpitrock.jpg" class="thumbnail">
										<p>게시물 내용을 출력할 것이며 사진을 바로 클릭하면 게시물 전체화면</p> <img
										src="pulpitrock.jpg" alt="Pulpit Rock"
										style="width: 175px; height: 175px">
									</a> <a href="pulpitrock.jpg" class="thumbnail">
										<p>게시물 내용을 출력할 것이며 사진을 바로 클릭하면 게시물 전체화면</p> <img
										src="pulpitrock.jpg" alt="Pulpit Rock"
										style="width: 175px; height: 175px">
									</a> <a href="pulpitrock.jpg" class="thumbnail">
										<p>게시물 내용을 출력할 것이며 사진을 바로 클릭하면 게시물 전체화면</p> <img
										src="pulpitrock.jpg" alt="Pulpit Rock"
										style="width: 175px; height: 175px">
									</a>
								</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>


</body>
</html>