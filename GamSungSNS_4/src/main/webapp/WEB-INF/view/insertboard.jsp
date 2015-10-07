<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">


<!-- <meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge"> -->
<title>Page title - Sitename</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="Description" lang="en" content="ADD SITE DESCRIPTION">
<meta name="author" content="ADD AUTHOR INFORMATION">
<meta name="robots" content="index, follow">


<!-- icons -->
<link rel="apple-touch-icon" href="img/apple-touch-icon.png">
<link rel="shortcut icon" href="favicon.ico">

<!-- Bootstrap Core CSS file -->
<link rel="stylesheet" href="css/bootstrap.min.css">

<!-- Override CSS file - add your own CSS rules -->
<link rel="stylesheet" href="css/styles.css">

<!-- Conditional comment containing JS files for IE6 - 8 -->
<!--[if lt IE 9]>
			<script src="assets/js/html5.js"></script>
			<script src="assets/js/respond.min.js"></script>
		<![endif]-->
</head>
<body>

	<!-- Navigation -->
	<nav class="navbar navbar-fixed-top navbar-inverse" role="navigation">
		<div class="container-fluid">

			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#">Sitename</a>
			</div>
			<!-- /.navbar-header -->

			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse"
				id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav">
					<li><a href="#">Nav item 1</a></li>
					<li><a href="#">Nav item 2</a></li>
					<li><a href="#">Nav item 3</a></li>
				</ul>
			</div>
			<!-- /.navbar-collapse -->
		</div>
		<!-- /.container-fluid -->
	</nav>
	<!-- /.navbar -->

	<!-- Page Content -->
	<div class="container-fluid">
		<div class="row">
			<div class="col-sm-8 col-sm-push-4">
				<div class="page-header">
					<h1>게시물 등록하기</h1>
				</div>
			</div>
		</div>
		<!-- /.row -->

		<div class="row">
			<div class="col-sm-8 col-sm-push-4">

				<!-- Image -->
				<div class="container-fluid">
					<div class="row">
						<div class="col-sm-12"></div>
					</div>
					<!-- /.row -->

					<div class="row margin-b-2" id="jtest">
						<div class="col-sm-12">
						<form name="insertboard" method="get">
							<textarea class="form-control" rows="10"></textarea>
							<hr>
							<input id="input-700" name="kartik-input-700[]" type="file"
								multiple class="file-loading">
							<hr>
							<input type="submit" class="btn btn-info" value="등록하기">
							<span>
							<a href = "javascript:registt_submit()">
							<input type="submit" class="btn btn-info" value="등록취소"></a>
							</span>
						</form>
						</div>
					</div>
				</div>
			</div>
			<div class="col-sm-4 col-sm-pull-8" id="sidebar">
				<!-- Search -->
				<div class="well">
					<h4 class="margin-t-0">Search</h4>
					<form action="#">
						<div class="input-group">
							<label class="sr-only" for="search-form">Search the site</label>
							<input type="text" class="form-control" id="search-form">
							<span class="input-group-btn">
								<button class="btn btn-default" type="button">
									<span class="glyphicon glyphicon-search"></span> <span
										class="sr-only">Search</span>
								</button>
							</span>
						</div>
					</form>
				</div>

				<!-- list group -->
				<div class="list-group margin-b-3">
					<a href="#" class="active list-group-item">행복</a> <a href="#"
						class="list-group-item">화남</a> <a href="#" class="list-group-item">신남</a>
					<a href="#" class="list-group-item">우울</a> <a href="#"
						class="list-group-item">펀펀</a>
				</div>

				<!-- Panel -->
				<div class="panel panel-default">
					<div class="panel-heading">
						<h4 class="panel-title">Best 게시물</h4>
					</div>
					<div class="panel-body">
						<img class="img-responsive thumbnail"
							src="http://placehold.it/700x350" alt="">
						<div class="caption">
							<h4>
								<a href="#">Image title</a>
							</h4>
							<p>게시물 본문에 있는 내용(첫글자 부터 폼에 해당하는 글자수 까지 출력가능)</p>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- /.row -->

		<hr>
		<footer class="margin-tb-3">
			<div class="row">
				<div class="col-lg-12">
					<p>Copyright &copy; 감정SNS 2015</p>
				</div>
			</div>
		</footer>
	</div>
	<!-- /.container-fluid -->

	<!-- JQuery scripts -->
	<script src="js/jquery-1.11.2.min.js"></script>
		<!-- Bootstrap Core scripts -->
	<script src="js/bootstrap.min.js"></script>
</body>
<!-- file input -->
<link href="css/fileinput.min.css" media="all" rel="stylesheet"
	type="text/css" />
<script src="js/plugins/canvas-to-blob.min.js" type="text/javascript"></script>
<script src="js/fileinput.min.js" type="text/javascript"></script>
<script src="js/fileinput_locale_LANG.js"></script>
<script>
		$("#input-700").fileinput({
			uploadUrl : "http://localhost/file-upload-single/1", // server upload action
			uploadAsync : true,
			maxFileCount : 5,
		});
	</script>
</html>