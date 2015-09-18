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

<script>
	$(document).ready(function() {
		$('#sidebar').affix({
			offset : {
				top : 10
			}
		});

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
	<div id="navbar">
		<nav class="navbar navbar-static">
			<div class="container">
				<a class="navbar-toggle" data-toggle="collapse"
					data-target=".nav-collapse"> <span
					class="glyphicon glyphicon-chevron-down"></span>
				</a>
				<div class="nav-collapse collase">
					<ul class="nav navbar-nav">
						<li><br>로고삽입</li>
						<li><form class="navbar-form navbar-left">
								<div class="input-group input-group-sm"
									style="max-width: 360px;">
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
							data-toggle="dropdown"><i class="glyphicon glyphicon-user">사용자 닉네임</i>
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
	</div>
	<!-- /.navbar -->

	<!-- Begin Body -->
	<div class="container">
		<div class="row">
			<div class="col col-sm-2">
				<div id="sidebar">
					<ul class="nav nav-stacked">
						<li><h3 class="highlight">
								사이드바 <i class="glyphicon glyphicon-dashboard pull-right"></i>
							</h3></li>
						<li><a href="#">Link</a></li>
						<li><a href="#">Link</a></li>
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

			<div class="col col-sm-10">
				<div class="panel">

					<div class="row">
						<div class="col col-sm-6">
							<br>
							<br>
							<h2>게시물 등록</h2>
							<p class="text-danger">As of v8.0, Safari exhibits a bug in
								which resizing your browser horizontally causes rendering errors
								in the justified nav that are cleared upon refreshing.</p>
						</div>
						<div class="col col-sm-6">

							<div class="masthead">
								<nav>
									<ul class="nav nav-justified">

										<li><a href="#">기쁨</a></li>
										<li><a href="#">슬픔</a></li>
										<li><a href="#">우울</a></li>
										<li><a href="#">화남</a></li>
										<li><a href="#">놀람</a></li>
									</ul>
								</nav>
							</div>

							<h2>베스트 게시물</h2>
							<p>Donec id elit non mi porta gravida at eget metus. Fusce
								dapibus, tellus ac cursus commodo, tortor mauris condimentum
								nibh, ut fermentum massa justo sit amet risus. Etiam porta sem
								malesuada magna mollis euismod. Donec sed odio dui.</p>
						</div>
					</div>

					<h2>게시물 리스트</h2>
					<p class="text-danger">As of v8.0, Safari exhibits a bug in
						which resizing your browser horizontally causes rendering errors
						in the justified nav that are cleared upon refreshing.</p>
					<p>Donec id elit non mi porta gravida at eget metus. Fusce
						dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh,
						ut fermentum massa justo sit amet risus. Etiam porta sem malesuada
						magna mollis euismod. Donec sed odio dui.</p>

					<hr>


					<hr>

					<h2>Responsive Text</h2>
					Eeaque ipsa quae ab illo inventore veritatis et quasi architecto
					beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia
					voluptas sit aspernatur aut odit aut fugit, sed quia cor magni
					dolores eos qui ratione voluptatem sequi nesciunt. Bootply is this
					awesomeness. Editor, prototype tool, adipisci velit, sed quia non
					numquam eius modi tempora incidunt ut labore et dolore magnam
					aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum
					exercitationem ullam corporis suscipit laboriosam, nisi ut

					<hr>

					<h2>Responsive Images</h2>
					Sed ut perspiciatis unde omnis iste natus error sit voluptatem
					accusantium doloremque laudantium, totam rem aperiam, eaque ipsa
					quae ab illo inventore veritatis et quasi architecto beatae vitae
					dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit
					aspernatur aut odit aut fugit, sed quia cor magni dolores eos qui
					ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui
					dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed
					quia non numquam eius modi tempora incidunt ut labore et dolore
					magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis
					nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut

					<hr>

					<h2>Media Queries</h2>
					Sed ut perspiciatis unde omnis iste natus error sit voluptatem
					accusantium doloremque laudantium, totam rem aperiam, eaque ipsa
					quae ab illo inventore veritatis et quasi architecto beatae vitae
					dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit
					aspernatur aut odit aut fugit, sed quia cor magni dolores eos qui
					ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui
					dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed
					quia non numquam eius modi tempora incidunt ut labore et dolore
					magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis
					nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut


					<h1>
						<a href="#"><i class="glyphicon glyphicon-user"></i> <i
							class="glyphicon glyphicon-chevron-down"></i></a>
					</h1>

					<hr>
					<h4>
						<a href="http://bootply.com/">Bootply</a>
					</h4>
					<hr>
				</div>
			</div>
		</div>
	</div>


	<!-- <nav class="navbar navbar-inverse navbar-fixed-top">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#navbar" aria-expanded="false"
					aria-controls="navbar">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#">로고삽입</a>
			</div>
			<div id="navbar" class="navbar-collapse collapse">
				<ul class="nav navbar-nav navbar-right">
					<li><a href="#">사용자계정</a></li>
					<li><a href="#">로그아웃</a></li>
					<li><a href="#">친구관리</a></li>
					<li><a href="#">정보수정</a></li>
				</ul>


				<form class="navbar-form navbar-left">
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


			</div>
		</div>
	</nav>

	<br>
	<br>
	<br>
	<br>
	<br>
	


	<div class="container">


		Example row of columns

		<div class="row">

			<div class="col-lg-6">
				<h2>게시물 등록</h2>
				<p class="text-danger">As of v8.0, Safari exhibits a bug in
					which resizing your browser horizontally causes rendering errors in
					the justified nav that are cleared upon refreshing.</p>
				<p>Donec id elit non mi porta gravida at eget metus. Fusce
					dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh,
					ut fermentum massa justo sit amet risus. Etiam porta sem malesuada
					magna mollis euismod. Donec sed odio dui.</p>
				<p>
					<a class="btn btn-primary" href="#" role="button">View details
						&raquo;</a>
				</p>
			</div>
			<div class="col-lg-6">
				<div class="masthead">
					<nav>
						<ul class="nav nav-justified">

							<li><a href="#">기쁨</a></li>
							<li><a href="#">슬픔</a></li>
							<li><a href="#">우울</a></li>
							<li><a href="#">화남</a></li>
							<li><a href="#">놀람</a></li>
						</ul>
					</nav>
				</div>
				<h2>베스트 게시물</h2>
				<p>Donec id elit non mi porta gravida at eget metus. Fusce
					dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh,
					ut fermentum massa justo sit amet risus. Etiam porta sem malesuada
					magna mollis euismod. Donec sed odio dui.</p>
				<p>
					<a class="btn btn-primary" href="#" role="button">View details
						&raquo;</a>
				</p>
			</div>
		</div>

		<div class="row">
			<div class="col-lg-12">
				<h2>게시물 리스트</h2>
				<p class="text-danger">As of v8.0, Safari exhibits a bug in
					which resizing your browser horizontally causes rendering errors in
					the justified nav that are cleared upon refreshing.</p>
				<p>Donec id elit non mi porta gravida at eget metus. Fusce
					dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh,
					ut fermentum massa justo sit amet risus. Etiam porta sem malesuada
					magna mollis euismod. Donec sed odio dui.</p>
				<p>
					<a class="btn btn-primary" href="#" role="button">View details
						&raquo;</a>
				</p>
			</div>
		</div>



		<nav class="navbar navbar-inverse navbar-fixed-bottom">
			<div class="container-fluid">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed"
						data-toggle="collapse" data-target="#navbar" aria-expanded="false"
						aria-controls="navbar">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
				
				</div>
				<div id="navbar" class="navbar-collapse collapse">
					<ul class="nav navbar-nav navbar-right">
						<li><a href="#">사용자계정</a></li>
						<li><a href="#">로그아웃</a></li>
						<li><a href="#">친구관리</a></li>
						<li><a href="#">정보수정</a></li>
					</ul>


				


				</div>
			</div>
		</nav>

		Site footer
		<footer class="footer">
			<p>&copy; Company 2014</p>
		</footer>

	</div>
	/container -->



</body>
</html>