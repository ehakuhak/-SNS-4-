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




<!-- <script src="js/plugins/canvas-to-blob.min.js"></script>
<script src="js/fileinput.min.js"></script>
<script src="js/fileinput_locale_LANG.js"></script>
<script src="js/dropzone/dropzone.js"></script>
 -->
<script src="js/jquery-1.11.2.min.js"></script>
<!-- icons -->
<link rel="apple-touch-icon" href="img/apple-touch-icon.png">
<link rel="shortcut icon" href="favicon.ico">

<!-- Bootstrap Core CSS file -->
<link rel="stylesheet" href="css/bootstrap.min.css">

<!-- Override CSS file - add your own CSS rules -->
<link rel="stylesheet" href="css/styles.css">


<link rel="stylesheet" href="css/dropzone/basic.css" />
<link rel="stylesheet" href="css/dropzone/dropzone.css" />
<link href="css/fileinput.min.css" media="all" rel="stylesheet" type="text/css" />

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
				<a class="navbar-brand" href="<%=request.getContextPath()%>/mainBoard">감성 SNS</a>
				<div class="col-xs-3 dropdown">
					<button type="button" class="btn btn-info visible-xs-block dropdown-toggle"
						id="topbutton1" data-toggle="dropdown">감정</button>
						<ul class="dropdown-menu" id="nvdd">
						 <div class="list-group margin-b-3" id="emotionSelector">
							<li><a href="#" class="active list-group-item" id=0>전체</a></li> 
							<li><a href="#" class="list-group-item" id=1>우울</a></li> 
							<li><a href="#" class="list-group-item" id=2>기쁨</a></li> 
							<li><a href="#"	class="list-group-item" id=3>놀람</a></li> 
							<li><a href="#"	class="list-group-item" id=4>두려움</a></li>
							<li><a href="#"	class="list-group-item" id=5>분노</a></li>
							<li><a href="#"	class="list-group-item" id=6>혐오</a></li>
						</div>
						 </ul>
				</div>
			</div>
			<!-- /.navbar-header -->
			<div class="row">
				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse col-sm-10"
					id="bs-example-navbar-collapse-1">
					
					<ul class="nav navbar-nav">

						<LI><a class="dropdown-toggle" data-toggle="dropdown"
							href="#">${user["USER_ID"]}</a>
							<ul class="dropdown-menu" role="menu" aria-labelledby="dLabel">
								<li><a href="#" data-toggle="modal" data-target="#userinfo">회원정보</a></li>
								<li><a href="#" id="logoutmenu">로그아웃</a></li>
							</ul></li>

						<li><a href="#" data-toggle="modal" data-target="#myfriend" id="friendTab">친구 관리</a></li>
						<li><a href="#" data-toggle="modal" data-target="#boardwrite">글작성</a></li>
						<li><a href="#">Nav item 3</a></li>

					</ul>

				</div>
				
<div class="col-sm-2 pull-right dropdown">

					<button type="button"
						class="btn btn-info visible-md-block visible-sm-block dropdown-toggle"
						id="topbutton2" data-toggle="dropdown">감정</button>
						 <ul class="dropdown-menu" id="nvdd">
						 <div class="list-group margin-b-3" id="emotionSelector">
							<li><a href="#" class="active list-group-item" id=0>전체</a></li> 
							<li><a href="#" class="list-group-item" id=1>우울</a></li> 
							<li><a href="#" class="list-group-item" id=2>기쁨</a></li> 
							<li><a href="#"	class="list-group-item" id=3>놀람</a></li> 
							<li><a href="#"	class="list-group-item" id=4>두려움</a></li>
							<li><a href="#"	class="list-group-item" id=5>분노</a></li>
							<li><a href="#"	class="list-group-item" id=6>혐오</a></li>
						</div>
						 </ul>
				</div>
			</div>
			<!-- /.navbar-collapse -->
		</div>
		<!-- /.container-fluid -->
	</nav>

	<nav class="navbar navbar-fixed-bottom navbar-inverse"
		role="navigation">
		<div class="container-fluid">

			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header col-xs-12">
				<a class="navbar-brand"	href="<%=request.getContextPath()%>/mainBoard">4조 감성돋조</a>
				
				<div id=teamname>정준호 김경환 목현호</div>
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
						<div class="visible-lg-block panel panel-default">
							<div class="panel-heading">
								<h4 class="panel-title">프로필</h4>
							</div>

							<div class="panel-body">
								<div class="row">
								<div class="visible-lg-block col-lg-12 col-lg-push-1" id="prosa">
									<img class="pro" src="" alt="">
								</div>
								</div>
								<div class="row">
								<div class="col-lg-13 col-sm-13 col-md-13 col-xs-13"
									style="text-align: center;">
									<div class="caption">
										<h4>
											<a href="#">${user["USER_ID"]}</a>
										</h4>
										<div class="btn-group">
											<button type="button" class="btn btn-info"
												id="userInfoButton" data-toggle="modal"
												data-target="#userinfo">회원 정보</button>
											<button type="button" class="btn btn-info" id="logoutButton">
												로그 아웃</button>
										</div>
									</div>
								 </div>
								</div>

							</div>

						</div>

						<!-- list group -->
						<div class="visible-lg-block list-group margin-b-3" id="emotionSelector">
							<a href="#" class="active list-group-item" id=0>전체</a> 
							<a href="#" class="list-group-item" id=1>우울</a> 
							<a href="#" class="list-group-item" id=2>기쁨</a> 
							<a href="#"	class="list-group-item" id=3>놀람</a> 
							<a href="#"	class="list-group-item" id=4>두려움</a>
							<a href="#"	class="list-group-item" id=5>분노</a>
							<a href="#"	class="list-group-item" id=6>혐오</a>
						</div>

					</ul>
				</div>

				<!-- <div class="col-sm-8 col-sm-push-4"> -->
				<!-- <div class="col-sm-8 col-sm-push-4"> -->
				<div class="col-lg-8 col-sm-12 col-md-12">
					<!-- Image -->
					<div class="container-fluid" id="test">

						<div class="row">
							<div class="wrapper" id="bestBoard">
								
								
							</div>
						</div>

						<!-- /.row -->

					</div>

					<br>

					<div class="container-fluid">
						<div class="row margin-b-2 scroll" id="jtest">


							


						</div>
					</div>
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
	<div id="myfriend" class="modal fade" tabindex="-1" role="dialog"
		aria-labelledby="basic" aria-hidden="true">
		<div class="modal-dialog" id="friend10">
			<jsp:include page="friend/friend.jsp"></jsp:include>
		</div>
	</div>
	
	<div id="findFriendModal" class="modal fade" tabindex="-1" role="dialog"
		aria-labelledby="basic" aria-hidden="true">
		<div class="modal-dialog">
			<jsp:include page="friend/findfriend.jsp"></jsp:include>
		</div>
	</div>

	<div id="requestFriendModal" class="modal fade" tabindex="-1" role="dialog"
		aria-labelledby="basic" aria-hidden="true">
		<div class="modal-dialog">
			<jsp:include page="friend/friendrequest.jsp"></jsp:include>
		</div>
	</div>
	
	<div id="myfriendModal" class="modal fade" tabindex="-1" role="dialog"
		aria-labelledby="basic" aria-hidden="true">
		<div class="modal-dialog">
			<jsp:include page="friend/myfriend.jsp"></jsp:include>
		</div>
	</div>
	

	<div id="userinfo" class="modal fade" tabindex="-1" role="dialog"
		aria-labelledby="basic" aria-hidden="true">
		<div class="modal-dialog">
			<jsp:include page="modal/userinfo.jsp"></jsp:include>
		</div>
	</div>

	<div id="boardwrite" class="modal fade" tabindex="-1" role="dialog"
		aria-labelledby="basic" aria-hidden="true">
		<div class="modal-dialog">
			<jsp:include page="modal/bestboardmodal.jsp"></jsp:include>
		</div>
	</div>

	<!-- Modal -->
	<div id="boardmodal" class="modal fade" tabindex="-1" role="dialog"
		aria-labelledby="basic" aria-hidden="true">
		<div class="modal-dialog">
			<jsp:include page="modal/boardmodal.jsp"></jsp:include>
		</div>
	</div>


	<!-- JQuery scripts -->
	<!-- <script src="js/jquery-1.11.2.min.js"></script> -->
	
	<!-- Bootstrap Core scripts -->
	<script src="js/bootstrap.min.js"></script>
	<script src="js/imgLiquid-min.js"></script>
	<script src="js/plugins/canvas-to-blob.min.js"></script>
	<script src="js/fileinput.min.js"></script>
	<script src="js/fileinput_locale_LANG.js"></script>
	<script src="js/dropzone/dropzone.js"></script>
	<script src="js/jscroll/jquery.jscroll.min.js"></script>
	<script type="text/javascript">
	/* $('body').on('hidden.bs.modal', '.modal', function () {
		  $(this).removeData('bs.modal');
		}); */
	$(function(){
		
		if("${user['PROFILEPATH']}" == null){
			$("#prosa > .pro").attr("src", "http://placehold.it/150x150");	
		}else{
			$("#prosa > .pro").attr("src", "<%=request.getContextPath()%>/upload/${user['USER_NO']}/profile/${user['PROFILEPATH']}");
		}
		abc3();
	})
		
	var scrollNum = 1;
	
	$(document).ready(function () {
		    $(".item").imgLiquid({
		        fill: false,
		        horizontalAlign: "center",
		        verticalAlign: "center"
		    });
	});
		
	$(document).ready(function () {
		    $(".itemfo").imgLiquid({
		        fill: false,
		        horizontalAlign: "center",
		        verticalAlign: "center"
		    });
	});
	
	$(document).ready(function () {
	    $("#prosa").imgLiquid({
	        fill: false,
	        horizontalAlign: "center",
	        verticalAlign: "center"
	    });
	});
	
	$(document).ready(function () {
	    $("#serachFriend > div > div").imgLiquid({
	        fill: false,
	        horizontalAlign: "center",
	        verticalAlign: "center"
	    });
	});
	
	$(document).ready(function () {
	    $(".itemfo1").imgLiquid({
	        fill: false,
	        horizontalAlign: "center",
	        verticalAlign: "center"
	    });
	});
		
	function abc(){
		 $(".item").imgLiquid({
		        fill: false,
		        horizontalAlign: "center",
		        verticalAlign: "center"
		    });
	}
	
	function abc1(){
		 $(".itemfo").imgLiquid({
		        fill: false,
		        horizontalAlign: "center",
		        verticalAlign: "center"
		    });
	}
	
	function abc2(){
		 $(".itemfo1").imgLiquid({
		        fill: false,
		        horizontalAlign: "center",
		        verticalAlign: "center"
		    });
	}
	
	function abc3(){
		 $("#prosa").imgLiquid({
		        fill: false,
		        horizontalAlign: "center",
		        verticalAlign: "center"
		    });
	}
	
	function abc4(){
		 $("#serachFriend > div > div").imgLiquid({
		        fill: false,
		        horizontalAlign: "center",
		        verticalAlign: "center"
		    });
	}
	
	$("#boardmodal .close").click(function(){
		/* $('#boardmodal').modal('hide'); */
		/* $("#boardmodal").html(""); */
		/* $("#boardmodal").modal('hide'); */
	}) 
	$('#boardmodal').on('hidden.bs.modal', function () {
		/* alert("###3324"); */
		/* $(this).data('modal', null); */
	    $("#commentTable").empty();
		$("ol").empty();
		$(".carousel-inner").empty();
		$('.carousel-inner').append("<div class=\"item active\" data-imgLiquid-fill=\"false\" style=\"width:540px; height:300px;\"></div>");
	});
	$('#boardmodal').on('shown.bs.modal', function(){
		/* alert("##"); */
		/* $("#deleted").empty(); */
		
	});
	$('#boardmodal').on('shown.bs.modal', function (e) {
		$(".carousel-inner").empty();
		
		var myBookId = $(this).data('id');
	    var myBookId = $(".modal-body #bookId").val();
	    /* $('#addBookDialog').modal('show'); */

	    
	    
	    var url="<%=request.getContextPath()%>/readBoard";
		var data={
				boardNo : myBookId
		};
		
		$.ajax({
			type:"post",
			url:url,
			data : data,
			dataType:"json",
			success:function(args){
				$("#btncount").text(args.recommendCount)
				$(".modal-header .modal-title").text(args.emotion)
				$("#writerName").text(args.name + "("+ args.userId + ")")
				$("#boardContent").text("");
				$("#boardContent").append('<p>' + args.content.replace(/\n/g, "<br>") + '</p>');
				$("#writeday").text("작성일 : " + args.regDate);
				for(idx = 0; idx < args.replys.length; idx++){
					var commentParentText = '<tr id="r1" name="commentParentCode">'
						+ '<td colspan=2>'
						+ '<strong>'
						+ args.replys[idx].name
						+ '</strong> ('
						+ args.replys[idx].userId
						+ ') <a style="cursor:pointer;" name="pDel">삭제</a><p>'
						+ args.replys[idx].replyContent.replace(/\n/g, "<br>")
						+ '</p>' + '</td>' + '</tr>';
					if ($('#commentTable').contents().size() == 0) {
						$('#commentTable').append(commentParentText);
					} else {
						$('#commentTable tr:last').after(
								commentParentText);
					}
				
				}
				if(args.imageList.length == 0){
					$('.carousel-inner').append("<div class=\"item active\" data-imgLiquid-fill=\"false\" style=\"width:540px; height:300px;\">" + "<img /></div>");
					$(".carousel-inner div img").attr("src","<%=request.getContextPath()%>/upload/defaultEmotion/"+args.emotionNo+".jpg");
					abc();
				}
				for(idx = 0; idx < args.imageList.length; idx++){
					if(idx == 0){
						/* $('ol').append("<li data-target=\"#carousel-example-generic\" data-slide-to=\"0\" class=\"active\"></li>") */
						$('.carousel-inner').append("<div class=\"item active\" data-imgLiquid-fill=\"false\" style=\"width:540px; height:300px;\">" + "<img /></div>");
					}
					else{
						/* $('ol').append("<li data-target=\"#carousel-example-generic\" data-slide-to=" + idx +"></li>"); */
						$('.carousel-inner').append("<div class=\"item\" data-imgLiquid-fill=\"false\" style=\"width:540px; height:300px;\">" + "<img /></div>");
					}
					$(".carousel-inner div img:eq("+ (idx) +")").attr("src","<%=request.getContextPath()%>/upload/" + args.usersUserNo +"/"+args.boardNo +"/" + args.imageList[idx].fileName);
					abc();
				}
			}, error:function(e){
				alert(e.responseTxt + "에러발생");
			}
		});
	});

	
		
	$(document).on("click", ".open-AddBookDialog", function () {
	
	    var myBookId = $(this).data('id');
	    $(".modal-body #bookId").val( myBookId );
	    $('#addBookDialog').modal('show');	
	});
 
	
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
				
			var url="<%=request.getContextPath()%>/allBoardList";
			var data = {
					rnum : 1
			}
			$.ajax({
				type:"post",
				url:url,
				data:data,
				dataType:"json",
				success:function(args){
					
					for(idx=0; idx < args.length; idx++) {
						$("#jtest").append("<a class=\"open-AddBookDialog\" data-toggle=\"modal\" data-target=\"#boardmodal\" data-id="+args[idx].boardNo+"><div class=\"wrapper col-lg-4 col-md-4 col-sm-6 col-xs-12 \" align=\"center\"><span class=\"itemfo\"><img class=\"img-responsive main\" alt=\"\"></span><div class=\"caption gtest\"><h4><a href=\"#\"><p>"+ args[idx].name +"("+ args[idx].userId + ") / " + args[idx].emotion + "</p></a></h4><p>"+ args[idx].content.replace(/\n/g, "<br>") + "</p></div></div></a>");
						/* $("img").attr("src","http://placehold.it/700x350"); */
					
						if(args[idx].imageList[0] != null){
							/* alert(args[idx].imageList[0]["fileName"]); */
							$(".itemfo > img:eq("+ (idx) +")").attr("src","<%=request.getContextPath()%>/upload/" + args[idx].usersUserNo + "/" + args[idx].boardNo+ "/" + args[idx].imageList[0]["fileName"]);
						}else{
							$(".itemfo > img:eq("+ (idx) +")").attr("src","<%=request.getContextPath()%>/upload/defaultEmotion/" + args[idx].emotionNo + ".jpg");
						}
						abc1();
					} 
				}, error:function(e){
					alert(e.responseTxt);
				}
			});
			
			bestBoard();
		});
	

		$("#jtest > div").click(function() {
			var url = "${pageContext.request.contextPath}/logout";
			$(location).attr('href', url);
		});

		$("#logoutButton").click(function() {
			//alert("click!");
			var url = "${pageContext.request.contextPath}/logout";
			$(location).attr('href', url);
		});

		$("#logoutmenu").click(function() {
			//alert("click!");
			var url = "${pageContext.request.contextPath}/logout";
			$(location).attr('href', url);
		});

		$('.list-group-item').click(function() {
			$('.active').removeClass("active");
			$(this).addClass("active").trigger('classChange');
			$("#jtest").empty();
			$('.carousel-inner').append("<div class=\"item active\" data-imgLiquid-fill=\"false\" style=\"width:540px; height:300px;\"></div>");
			var a = $(this).attr("id");
			/* var b = $(this).text(); */
			scrollNum = 1;
			$("#bestBoard").empty();
			bestBoardByEmotion(a);		
			loadBoard(a);	 
			
			/* $(".page-header > h1").text(b); */
		});
		
		$('this').on('classChange', function(){
			alert("ddfd");
		})
		
		$(document).bind("click dbclick focus keydown scroll", function() {
			cnt = 0;
		});
		
		var maxtime = <%=session.getMaxInactiveInterval()%>;
		var max = maxtime;
		var cnt = 0;
		var objRun; 
		objRun= setInterval(function(){
			cnt++;
			//alert(maxtime + " : " + cnt);
			if(cnt >= max-10){
				alert("장시간 사용하지 않아 로그아웃 되셨습니다.");
				clearInterval(objRun);
				var url = "${pageContext.request.contextPath}/logout";
				$(location).attr('href',url);
			}
		}, 1000);
		
		function loadBoard(i){
			var url;
			if(i == 0){
				url="<%=request.getContextPath()%>/allBoardList";
			}
			else{
				url="<%=request.getContextPath()%>/emotionBoardList";
			}
			data = {
				emotionNo : i,
				rnum : scrollNum
			};
			//alert("scrollNum : " + scrollNum);
			$.ajax({
				type : "post",
				url : url,
				data : data,
				dataType : "json",
				success : function(args) {
						 for(idx=0; idx < args.length; idx++) {
							 /* alert(args[idx].imageList.length); */
							$("#jtest").append("<a class=\"open-AddBookDialog\" data-toggle=\"modal\" data-target=\"#boardmodal\" data-id="+args[idx].boardNo+"><div class=\"wrapper col-lg-4 col-md-4 col-sm-6 col-xs-12 \" align=\"center\"><span class=\"itemfo\"><img class=\"img-responsive main\" alt=\"\"></span><div class=\"caption gtest\"><h4><a href=\"#\"><p>"+ args[idx].name +"("+ args[idx].userId + ") / " + args[idx].emotion + "</p></a></h4><p>"+ args[idx].content.replace(/\n/g, "<br>") + "</p></div></div></a>");
						//	 alert(scrollNum);
							if(args[idx].imageList[0] != null){
								$(".itemfo > img:eq("+ (idx+(scrollNum-1)*6) +")").attr("src","<%=request.getContextPath()%>/upload/" + args[idx].usersUserNo + "/" + args[idx].boardNo+ "/" + args[idx].imageList[0]["fileName"]);	
							}else{
								$(".itemfo > img:eq("+ (idx+(scrollNum-1)*6) +")").attr("src","<%=request.getContextPath()%>/upload/defaultEmotion/" + args[idx].emotionNo + ".jpg");
							}
							abc1();
						}
				},
				error : function(e) {
					alert(e.responseTxt);
				}
			});
			
		}
		
	$(function(){
		$("#friendTab").click(function(){
			var url="<%=request.getContextPath()%>/friendCount";
			var data = {userNo:<%=session.getAttribute("loginNo") %>};
			$.ajax({
				type:"post",
				url:url,
				data:data,
				dataType:"json",
				success:function(args){	
					 	$("#friendCount").text(args["FRELIST"]);
					 	$("#reqFriendCount").text(args["REQ"]);
				}, error:function(e){
					alert(e.responseTxt);
				}
			});
		})
		<%-- var url="<%=request.getContextPath()%>/WEB-INF/modaltest.jsp" --%>
		
		
	});
	$("#friendContent button").click(function(){
	//	var url = "${pageContext.request.contextPath}/go?page=friend/";
		//alert("@@");
		var a = $(this).attr("id");

		$("#myfriend").modal("hide");	
		 if(a == "findfriend"){
			$("#findFriendModal").modal("show");		
		}else if(a == "friendrequest"){
			$("#requestFriendModal").modal("show");	
		}else if(a == "myfriend"){
			$("#myfriendModal").modal("show");
		}
		
	}); 
	
  	$("#friend-footer > #close").click(function(){
  		$('#myfriend').removeData('bs.modal');
	}); 
  	
  	
  	$(window).scroll(function() {
 		 if(($(window).scrollTop() == ($(document).height()-$(window).height())) && $(window).scrollTop() != 0  ){
 			var url;
 			var i = $('#emotionSelector > .active').attr("id");
			if(i == 0){	
				url="<%=request.getContextPath()%>/allBoardList";
			}
			else{
				url="<%=request.getContextPath()%>/emotionBoardList";
			}
			<%-- url="<%=request.getContextPath()%>/allBoardList"; --%>

 			var abcd = scrollNum + 1;
 			var data = {
 					rnum : abcd,
 					emotionNo : i
 			}
 			$.ajax({
 				type:"post",
 				url:url,
 				data:data,
 				dataType:"json",
				success: function(args) {
					for(idx=0; idx < args.length; idx++) {
						$("#jtest").append("<a class=\"open-AddBookDialog\" data-toggle=\"modal\" data-target=\"#boardmodal\" data-id="+args[idx].boardNo+"><div class=\"wrapper col-lg-4 col-md-4 col-sm-6 col-xs-12 \" align=\"center\"><span class=\"itemfo\"><img class=\"img-responsive main\" alt=\"\"></span><div class=\"caption gtest\"><h4><a href=\"#\"><p>"+ args[idx].name +"("+ args[idx].userId + ") / " + args[idx].emotion + "</p></a></h4><p>"+ args[idx].content.replace(/\n/g, "<br>") + "</p></div></div></a>");
						if(args[idx].imageList[0] != null){
							$(".itemfo > img:eq("+ (idx+(scrollNum)*6) +")").attr("src","<%=request.getContextPath()%>/upload/" + args[idx].usersUserNo + "/" + args[idx].boardNo+ "/" + args[idx].imageList[0]["fileName"]);	
						}else{
							$(".itemfo > img:eq("+ (idx+(scrollNum)*6) +")").attr("src","<%=request.getContextPath()%>/upload/defaultEmotion/" + args[idx].emotionNo + ".jpg");
						}
						abc1();
					}
					if(args.length != 0){
						scrollNum++;	
					}
				}
 			});
 		 } 
  	});
	
 	function bestBoardByEmotion(emotionNo){
 		if(emotionNo == 0){	
			url="<%=request.getContextPath()%>/bestBoard";
		}
		else{
			url="<%=request.getContextPath()%>/bestBoardE";
		}
 		<%-- var url="<%=request.getContextPath()%>/bestBoardE"; --%>
		var data = {
				emotionNo : emotionNo
		}
		$.ajax({
			type:"post",
			url:url,
			data:data,
			dataType:"json",
			success:function(args){
				$("#bestBoard").append("<a><div><span><img></span></div><div class=\"mmtest\"><h4><a href=\"#\" id=\"wlrma\"></a></h4><p></p></div></a>");
					/* $("img").attr("src","http://placehold.it/700x350"); */
				$("#bestBoard a").addClass("open-AddBookDialog").attr("data-toggle","modal").attr("data-target","#boardmodal").attr("data-id",args.boardNo);
				$("#bestBoard a div").addClass("col-sm-6").attr("align","center");
				$("#bestBoard a div span").addClass("itemfo1");
				$("#bestBoard a div span img").addClass("img-responsive main");
				$("#bestBoard > .mmtest > h4 > #wlrma").append(args.userId + " / " + args.name );
				$("#bestBoard > .mmtest p").append('<p>' + args.content.replace(/\n/g, "<br>") + '</p>');
				if(args.imageList[0] != null){
						/* alert(args[idx].imageList[0]["fileName"]); */
					$("#bestBoard a div .itemfo1 > img").attr("src","<%=request.getContextPath()%>/upload/" + args.usersUserNo + "/" + args.boardNo+ "/" + args.imageList[0]["fileName"]);
				}else{
					$("#bestBoard a div .itemfo1 > img").attr("src","<%=request.getContextPath()%>/upload/defaultEmotion/" + args.emotionNo + ".jpg");
				}
				abc2();
				
			}, error:function(e){
				alert(e.responseTxt);
			}
		});
	}
 	
 	function bestBoard(){
 		var url="<%=request.getContextPath()%>/bestBoard";
		$.ajax({
			type:"post",
			url:url,
			dataType:"json",
			success:function(args){
				$("#bestBoard").append("<a><div><span><img></span></div><div class=\"mmtest\"><h4><a href=\"#\" id=\"wlrma\"></a></h4><p></p></div></a>");
					/* $("img").attr("src","http://placehold.it/700x350"); */
				$("#bestBoard a").addClass("open-AddBookDialog").attr("data-toggle","modal").attr("data-target","#boardmodal").attr("data-id",args.boardNo);
				$("#bestBoard a div").addClass("col-sm-6").attr("align","center");
				$("#bestBoard a div span").addClass("itemfo1");
				$("#bestBoard a div span img").addClass("img-responsive main");
				$("#bestBoard > .mmtest > h4 > #wlrma").append(args.userId + " / " + args.name );
				$("#bestBoard > .mmtest p").append("<p>" + args.content.replace(/\n/g, "<br>") + "</p>");
				if(args.imageList[0] != null){
						/* alert(args[idx].imageList[0]["fileName"]); */
					$("#bestBoard a div .itemfo1 > img").attr("src","<%=request.getContextPath()%>/upload/" + args.usersUserNo + "/" + args.boardNo+ "/" + args.imageList[0]["fileName"]);
				}else{
					$("#bestBoard a div .itemfo1 > img").attr("src","<%=request.getContextPath()%>/upload/defaultEmotion/" + args.emotionNo + ".jpg");
				}
				abc2();
				
			}, error:function(e){
				alert(e.responseTxt);
			}
		});
 	}
 	
 	$(function(){
		$("#srch-button").click(function(){
			var url="<%=request.getContextPath()%>/searchUser";
			var data = {
				key : $("#search_term").val(),
				userNo : <%=session.getAttribute("loginNo")%>
			};
			$.ajax({
				type : "post",
				url : url,
				data : data,
				dataType : "json",
				success : function(args) {
					$("#serachFriend").empty();
					for (idx = 0; idx < args.length; idx++) {
						$("#serachFriend").append("<div class=\"row margin-b-2\"> "
												+ "<div class=\"col-lg-6 col-md-6 col-sm-6 col-xs-6\" id=\"prosa2\">"
												+ "<img class=\"img-responsive\" >"
												+ "</div> "
												+ "<div class=\"col-lg-6 col-md-6 col-sm-6 col-xs-6\" id=\"prosagul\"> "
												+ "<div class=\"caption\"> "
												+ "<h3><a href=\"#\">"
												+ args[idx]["USER_ID"]
												+ "</a></h3> "
												+ "<h4><a href=\"#\">"
												+ args[idx]["NAME"]
												+ " </a></h4> "
												+ "<button type=\"button\" id="+args[idx].USER_NO +" class=\"btn btn-info addFriend1 \">친구 추가</button><br><br></div></div></div> "
												);
						if(args[idx].PROFILEPATH == null){
							$("#serachFriend > div > div > img:eq("+ (idx) +")").attr("src","http://placehold.it/150x150");	
						}else{
							$("#serachFriend > div > div > img:eq("+ (idx) +")").attr("src","<%=request.getContextPath()%>/upload/" + args[idx].USER_NO + "/profile/"+args[idx].PROFILEPATH);
						}
						
					<%-- 	$("#serachFriend img:eq("+ (idx) +")").attr("src","<%=request.getContextPath()%>/upload/" + args[idx].usersUserNo +"/"+args[idx].boardNo +"/" + args[idx].imageList[0].fileName); --%>
						abc4();
						}
					},
					error : function(e) {
											//alert(e.responseTxt);
						}
					});
		});
		
		
	})
	
	$(document).on("click",".addFriend1",function(e){
		var a = this.id;
		var b = <%=session.getAttribute("loginNo")%>
 		
 			var url="<%=request.getContextPath()%>/requireFriend";
			var data = {
					loginNo : b,
					userNo : a
			}
			$.ajax({
				type:"post",
				url:url,
				data:data,
				dataType:"json",
				success:function(args){
					alert("친구 신청 함"); 
				}, error:function(e){
					alert(e.responseTxt);
				}
			});
 	});
</script>
</body>

</html>