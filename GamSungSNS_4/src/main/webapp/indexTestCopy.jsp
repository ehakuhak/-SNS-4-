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
					<h1>Blog post title</h1>
				</div>
			</div>
		</div>
		<!-- /.row -->

		<div class="row">
			<!-- <div class="col-sm-4 col-sm-pull-8" id="sidebar"> -->
			<div class="col-sm-4" id="sidebar">
				<!-- Search -->
				<div class="panel panel-default">
					<div class="panel-heading">
						<h4 class="panel-title">프로필 </h4>
					</div>

					<div class="panel-body">
						<img class="img-responsive thumbnail"
							src="http://placehold.it/100x100" alt="">

						<div class="caption">
							<h4>
								<a href="#">gingersnaps@naver.com</a>
							</h4>
							<button type="button" class="btn btn-info btn-primary btn-block">
								<span class="glyphicon glyphicon-pencil"></span>다시 작성
							</button>
							<button type="button" class="btn btn-info btn-primary btn-block">
								<span class="glyphicon glyphicon-pencil"></span>다시 작성
							</button>
						</div>
						
					</div>

				</div>

				<!-- list group -->
				<div class="list-group margin-b-3">
					<a href="#" class="active list-group-item" id=0>전체</a> <a href="#"
						class="list-group-item" id=1>화남</a> <a href="#"
						class="list-group-item" id=2>신남</a> <a href="#"
						class="list-group-item" id=3>우울</a> <a href="#"
						class="list-group-item" id=4>펀펀</a>
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

			<!-- <div class="col-sm-8 col-sm-push-4"> -->
			<div class="col-sm-8">
				<!-- Image -->
				<div class="container-fluid">
					<div class="row">
						<div class="col-sm-12"></div>
					</div>
					<!-- /.row -->

					<div class="row margin-b-2" id="jtest">


						<!-- <div class="col-sm-4">
							<img class="img-responsive thumbnail"
								src="http://placehold.it/700x350" alt="">
							<div class="caption">
								<h4>
									<a href="#">Image title</a>
								</h4>
								<p>게시물 본문에 있는 내용(첫글자 부터 폼에 해당하는 글자수 까지 출력가능)</p>
							</div>
						</div> -->



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
	<script type="text/javascript">
	
	$(function(){
			var url="<%=request.getContextPath()%>/allBoardList";
			
			$.ajax({
				type:"post",
				url:url,
				dataType:"json",
				success:function(args){
					
					 for(idx=0; idx<args.length; idx++) {
						$("#jtest").append("<div class=\"col-sm-4\"><img class=\"img-responsive thumbnail alt=\"\"><div class=\"caption\"><h4><a href=\"#\">"+ args[idx].name +"</a></h4><p>"+ args[idx].content + "</p></div></div>");
						$("img").attr("src","http://placehold.it/700x350");
						$("#jtest > div > div:last").css({
							/* height:"400px" */
						});
					} 
				}, error:function(e){
					alert(e.responseTxt);
				}
			});
			
			
		});
		$('.list-group-item').click(function(){
			$('.active').removeClass("active");
			$(this).addClass("active");
			$("#jtest").empty();
			var a = $(this).attr("id");
			
			loadBoard(a);
		});
		
		function loadBoard(idx){
			var url;
			if(idx == 0){
				url="<%=request.getContextPath()%>/allBoardList";
			}
			else{
				url="<%=request.getContextPath()%>
		/emotionBoardList";
			}

			var data = {
				emotionNo : idx
			};
			$
					.ajax({
						type : "post",
						url : url,
						data : data,
						dataType : "json",
						success : function(args) {
							for (idx = 0; idx < args.length; idx++) {
								$("#jtest")
										.append(
												"<div class=\"col-sm-4\"><img class=\"img-responsive thumbnail alt=\"\"><div class=\"caption\"><h4><a href=\"#\">"
														+ args[idx].name
														+ "</a></h4><p>"
														+ args[idx].content
														+ "</p></div></div>");
								$("img").attr("src",
										"http://placehold.it/700x350");
								$("#jtest > div > div:last").css({
								/* height:"400px" */
								});
							}
						},
						error : function(e) {
							alert(e.responseTxt);
						}
					});
		}
	</script>

	<!-- Bootstrap Core scripts -->
	<script src="js/bootstrap.min.js"></script>
</body>

</html>