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
	<nav class="navbar navbar-fixed-top navbar-inverse" role="navigation" id="navbarc">
		<div class="container-fluid">

			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="<%=request.getContextPath()%>/mainBoard">Sitename</a>
				<div align="center">
				<button type="button" class="btn btn-info visible-xs-block" id="topbutton1">
					분실
				</button>
				</div>
			</div>
			<!-- /.navbar-header -->
			<div class="row">
			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse col-sm-10"
				id="bs-example-navbar-collapse-1">
				<!-- <button type="button" class="btn btn-info btn-primary btn-block"
		data-toggle="modal" data-target="#myfriend">
		<span class="glyphicon glyphicon-search"></span>친구목록 -->
		
				<ul class="nav navbar-nav">
					<li><a href="#">${user["USER_ID"]}</a></li>
					<li><a href="#" data-toggle="modal" data-target="#myfriend">친구 관리</a></li>
					<li><a href="#">글작성</a></li>
					<li><a href="#">Nav item 3</a></li>
				</ul>
				
			</div>
			<div class="col-sm-2 pull-right">
			
			<button type="button" class="btn btn-info visible-sm-block" id="topbutton2" >
					분실
				</button>
				</div>
			</div>
			<!-- /.navbar-collapse -->
		</div>
		<!-- /.container-fluid -->
	</nav>
	
	<nav class="navbar navbar-fixed-bottom navbar-inverse" role="navigation" id="navbarc">
		<div class="container-fluid">

			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header col-xs-12">
				<a class="navbar-brand" href="<%=request.getContextPath()%>/mainBoard">4조 감성돋조</a>
			<div id=teamname>	
				윤태선
				정준호
				김경환
				목현호
			</div>
		</div>
		
		</div>
		<!-- /.container-fluid -->
	</nav>
	<!-- /.navbar -->

	<!-- Page Content -->
	<div class="container-fluid">
		<!-- <div class="row">
			<div class="col-sm-12 col-md-8 col-md-push-4">
				<div class="page-header">
					<h1>전체</h1>
				</div>
			</div>
		</div>
		/.row -->
		
		<div class="container">
		<div class="row">
			<!-- <div class="col-sm-4 col-sm-pull-8" id="sidebar"> -->
			<div class="col-sm-12 col-lg-4 col-md-4 col-xs-12" id="leftCol">
				<ul class="nav nav-stacked" id="sidebar">
				
				<!-- Search -->
				<div class="visible-lg-block visible-md-block panel panel-default">
					<div class="panel-heading">
						<h4 class="panel-title">프로필 </h4>
					</div>

					<div class="panel-body">
					<div class="visible-lg-block col-sm-4">
						<img class="img-responsive thumbnail"
							src="http://placehold.it/100x100" alt="">
					</div>
					<div class="col-lg-13 col-sm-13 col-md-13 col-xs-13" style="text-align: center;">
						<div class="caption">
							<h4>
								<a href="#">${user["USER_ID"]}</a>
							</h4>
							<div class="btn-group">
							<button type="button" class="btn btn-info" id="userInfoButton">
								회원 정보
							</button>
							<button type="button" class="btn btn-info" id="logoutButton">
								로그 아웃
							</button>
							</div>
						</div>
					</div>
		
					</div>

				</div>
				<!-- <div class="well">
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
				</div> -->

				<!-- list group -->
				<div class="visible-lg-block visible-md-block list-group margin-b-3">
					<a href="#" class="active list-group-item" id=0>전체</a> 
					<a href="#" class="list-group-item" id=1>화남</a> 
					<a href="#" class="list-group-item" id=2>신남</a>
					<a href="#" class="list-group-item" id=3>우울</a> 
					<a href="#"	class="list-group-item" id=4>펀펀</a>
				</div>
		
				<!-- Panel -->
				<!-- <div class="panel panel-default">
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
				</div> -->
				</ul>
			</div>
		
			<!-- <div class="col-sm-8 col-sm-push-4"> -->
			<div class="col-sm-12 col-md-8">
				<!-- Image -->
				<div class="container-fluid" id="test">
					
					<div class="row">
						
						<div class="col-sm-6">
							<img class="img-responsive"
								src="http://placehold.it/700x350" alt="">
						</div>
							<div class="col-sm-6">
								<h4>
									<a href="#">Image title</a>
								</h4>
								<p>게시물 본문에 있는 내용(첫글자 부터 폼에 해당하는 글자수 까지 출력가능)</p>
							</div>
					</div>
				
					<!-- /.row -->
					
				</div>
				
					<br>
					
				<div class="container-fluid">
				<div class="row margin-b-2" id="jtest">
						

					<!-- 	<div class="col-sm-4">
							<img class="img-responsive"
								src="http://placehold.it/700x350" alt="">
							<div class="caption">
								<h4>
									<a href="#">Image title</a>
								</h4>
								<p>게시물 본문에 있는 내용</p>
							</div>
						</div> -->
						
						
						</div>
					</div>
			</div>
			
			
			
		</div>
		<!-- /.row -->
		</div>


		<hr>
		<footer class="margin-tb-3">
			<div class="row">
				<div class="col-lg-12">
					<!-- <p>Copyright &copy; 감정SNS 2015</p> -->
				</div>
			</div>
		</footer>
	</div>
	<!-- /.container-fluid -->
	
	<!-- Modal -->
	<div id="myfriend" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="basic" aria-hidden="true">
		<div class="modal-dialog">
			<jsp:include page="friend/friend.jsp"></jsp:include>
		</div>
	</div>
	
	
	<!-- JQuery scripts -->
	<script src="js/jquery-1.11.2.min.js"></script>
	<script type="text/javascript">
	
	
	
	$(function(){
		$('#sidebar').affix({
			offset : {
				top : -1
			}
		});
		
		
		/* activate scrollspy menu */
		var $body   = $(document.body);
		var navHeight = $('.navbar').outerHeight(true) + 10;

		$body.scrollspy({
			target: '#leftCol',
			offset: navHeight
		});
		
		
		var maxtime = <%=session.getMaxInactiveInterval()%>;
		var max = maxtime;
		var cnt = 0;
		var objRun; 
		objRun= setInterval(function(){
			/* $(".page-header > h1").text(cnt++); */
			if(cnt >= max-10){
				alert("장시간 사용하지 않아 로그아웃 되셨습니다.");
				clearInterval(objRun);
				var url = "${pageContext.request.contextPath}/logout";
				$(location).attr('href',url);
			}
		}, 1000);
		
		
		$(document).bind("click dbclick focus keydown scroll",function(){
			cnt = 0;
		});
			
			var url="<%=request.getContextPath()%>/allBoardList";
			
			$.ajax({
				type:"post",
				url:url,
				dataType:"json",
				success:function(args){
					
					 for(idx=0; idx<args.length; idx++) {
						$("#jtest").append("<div class=\"col-sm-4\" id=\"jbox\"><img class=\"img-responsive alt=\"\"><div class=\"caption\"><h4><a href=\"#\">"+ args[idx].name +"</a></h4><p>"+ args[idx].content + "</p></div></div>");
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
	
		$("#logoutButton").click(function(){
			//alert("click!");
			var url = "${pageContext.request.contextPath}/logout";
			$(location).attr('href',url);
		});
		
		$('.list-group-item').click(function(){
			$('.active').removeClass("active");
			$(this).addClass("active");
			$("#jtest").empty();
			var a = $(this).attr("id");
			var b = $(this).text();
			loadBoard(a);
			$(".page-header > h1").text(b);
		});
		
		function loadBoard(idx){
			var url;
			if(idx == 0){
				url="<%=request.getContextPath()%>/allBoardList";
			}
			else{
				url="<%=request.getContextPath()%>/emotionBoardList";
			}
		
			var data = {emotionNo:idx};
			$.ajax({
				type:"post",
				url:url,
				data:data,
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
		}
	</script>
	
	<!-- Bootstrap Core scripts -->
	<script src="js/bootstrap.min.js"></script>
	
	
</body>

</html>