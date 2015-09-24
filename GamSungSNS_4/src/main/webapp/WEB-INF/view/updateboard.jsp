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
<link href="css/fileinput.min.css" media="all" rel="stylesheet" type="text/css" />
<script src="js/plugins/canvas-to-blob.min.js" type="text/javascript"></script>
<script src="js/fileinput.min.js" type="text/javascript"></script>
<script src="js/fileinput_locale_LANG.js"></script>
<script>
	$(document).ready(function() {
		$('#sidebar').affix({
			offset : {
				top : -1
			}
		});

	});
	$(document).on('ready', function() {
	    $("#input-4").fileinput({showCaption: false});
	});
</script>
<style type="text/css">
/* h1 {
	color: orange;
}

.navbar {
	color: #FFFFFF;
	background-color: #B2EBF4;
} */

/* bootstrap 3 helpers */
.navbar-form input, .form-inline input {
	width: auto;
}

#sidebar {
	margin-top: 100px;
}

/* end */

/* custom theme */
header {
	min-height: 1000px;
	margin-bottom: 4000px;
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
	margin-top: 100px;
}

a, a:hover {
	color: #B2EBF4;
	text-decoration: none;
}

.highlight-bk {
	background-color: #B2EBF4;
	padding: 1px;
	width: 100%;
}

.highlight {
	color: #B2EBF4;
}

h3.highlight {
	padding-top: 13px;
	padding-bottom: 14px;
	border-bottom: 2px solid #B2EBF4;
}

.navbar {
	background-color: #B2EBF4;
	color: #ffffff;
	border: 0;
	border-radius: 0;
}

.navbar-nav>li>a {
	color: #fff;
	padding-left: 20px;
	padding-right: 20px;
	border-left: 1px solid #B2EBF4;
}

.navbar-nav>li>a:hover, .navbar-nav>li>a:focus {
	color: #666666;
}

.navbar-nav>li:last-child>a {
	border-right: 1px solid #B2EBF4;
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
	border-color: #B2EBF4;
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

/* end theme */
</style>
<title>Insert title here</title>
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
					</form></li>
				<li><a href="#">Link</a></li>
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

	<!-- /.navbar -->

	<!-- Begin Body -->
	<div class="container">
		<div class="row">
			<div class="col col-sm-2">
				<div id="sidebar">
					<ul class="nav nav-stacked">
						<li><h3 class="highlight">
								프로필 <i class="glyphicon glyphicon-user pull-right"></i>
							</h3></li>
						<li><a href="#">사진 위치</a></li>
						<li>1</li>
						<li>1</li>
						<li>닉네임 값 받기</li>
						<li>내가등록한 게시물</li>
					</ul>
					<div class="accordion" id="accordion2">
						<div class="accordion-group">
							<div class="accordion-heading">
								<a class="accordion-toggle" data-toggle="collapse"
									data-parent="#accordion2" href="#collapseOne"> Accordion </a>
							</div>
							<div id="collapseOne" class="accordion-body collapse in">
								<div class="accordion-inner">
									<p>There is a lot to be said about RWD.</p>
								</div>
							</div>
						</div>
						<div class="accordion-group">
							<div class="accordion-heading">
								<a class="accordion-toggle" data-toggle="collapse"
									data-parent="#accordion2" href="#collapseTwo"> Accordion </a>
							</div>
							<br>
							<br>
							<br>
							<br>
							<br>
							<ul class="nav nav-stacked">
								<li><h3 class="highlight">
										감정 카테고리 <i class="glyphicon glyphicon-user pull-right"></i>
									</h3></li>
								<li><a href="#">사진 위치</a></li>
								<li>1</li>
								<li>1</li>
								<li>닉네임 값 받기</li>
								<li>내가등록한 게시물</li>
							</ul>

							<div id="collapseTwo" class="accordion-body collapse">
								<div class="accordion-inner">
									<p>Use @media queries or utility classes to customize
										responsiveness.</p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>


			<div class="col col-md-10">
				<div class="panel">

					<div class="row">
						<div class="col col-md-12">
							<br> <br>


							<button type="button" class="btn btn-info">
								<span class="glyphicon glyphicon-camera"></span>
							</button>
							<button type="button" class="btn btn-info">
								<span class="glyphicon glyphicon-film"></span>
							</button>


							<textarea class="form-control" rows="20" id="comment">
							
							</textarea>
							<label class="control-label">Select File</label>
							<input id="input-4" type="file" multiple=true class="file-loading">
							
							<button type="button" class="btn btn-info">
								<span class="glyphicon glyphicon-pencil"></span>수정
							</button>
							<button type="button" class="btn btn-info">
								<span class="glyphicon glyphicon-pencil"></span>삭제
							</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>



</body>
</html>