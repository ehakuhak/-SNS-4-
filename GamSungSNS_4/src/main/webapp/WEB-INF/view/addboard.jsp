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
 <link rel="stylesheet" href="http://fontawesome.io/assets/font-awesome/css/font-awesome.css">
<!-- icons -->
<link rel="apple-touch-icon" href="img/apple-touch-icon.png">
<link rel="shortcut icon" href="favicon.ico">

<!-- Bootstrap Core CSS file -->
<link rel="stylesheet" href="css/bootstrap.min.css">

<!-- Override CSS file - add your own CSS rules -->
<link rel="stylesheet" href="css/styles.css">
<!-- addboard CSS file  -->
<link rel="stylesheet" href="css/addboard.css">

<!-- file input / upload -->
<link href="css/fileinput.min.css" media="all" rel="stylesheet"
	type="text/css" />

<!-- JQuery scripts -->
<script src="js/jquery-1.11.2.min.js"></script>
<script src="js/plugins/canvas-to-blob.min.js" type="text/javascript"></script>
<script src="js/fileinput.min.js" type="text/javascript"></script>
<script src="js/fileinput_locale_LANG.js"></script>


<!-- Bootstrap Core scripts -->
<script src="js/bootstrap.min.js"></script>
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
	<div class="container">
		<div class="row">
			<h3>게시물 등록하기</h3>
		</div>

		<div class="row">

			<div class="col-md-12">
				<div class="widget-area no-padding blank">
					<div class="status-upload">
						<form>
							<textarea placeholder="What are you doing right now?"></textarea>
							
							<ul>
								<li><a title="" data-toggle="tooltip"
									data-placement="bottom" data-original-title="Audio"><i
										class="fa fa-music"></i></a></li>
								<li><a title="" data-toggle="tooltip"
									data-placement="bottom" data-original-title="Video"><i
										class="fa fa-video-camera"></i></a></li>
								<li><a title="" data-toggle="tooltip"
									data-placement="bottom" data-original-title="Sound Record"><i
										class="fa fa-microphone"></i></a>
										</li>
								<li><a title="" data-toggle="tooltip"
									data-placement="bottom" data-original-title="Picture"><i
										class="fa fa-picture-o"></i></a></li>
							</ul>
							<button type="submit" class="btn btn-success green">
								<i class="fa fa-share"></i> Share
							</button>
						</form>
					</div>
					<!-- Status Upload  -->
				</div>
				<!-- Widget Area -->
			</div>

		</div>
	</div>

	<script>
		$(document).ready(function() {
			$('.status').click(function() {
				$('.arrow').css("left", 0);
			});
			$('.photos').click(function() {
				$('.arrow').css("left", 146);
			});
			$(document).on('ready', function() {
			    $("#input-41").fileinput({
			        maxFileCount: 10,
			        allowedFileTypes: ["image", "video"]
			    });
			});
			$(document).ready(function(){			    
			    $("[data-toggle=tooltip]").tooltip();
			});
		});
	</script>
</body>
</html>

