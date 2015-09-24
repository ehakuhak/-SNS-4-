<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
<link href="css/sidebar.css" media="all" rel="stylesheet" type="text/css" />
<script>
$(document).ready(function() {
	$('#profile-sidebar').affix({
		offset : {
			top : -1
		}
	});

});
</script>
<title>Insert title here</title>
</head>
<body>
<jsp:include page="/WEB-INF/view/header.jsp" flush="false"></jsp:include>
<div class="container">
    <div class="row profile">
		<div class="col-md-3">
			<div class="profile-sidebar" id="sidebar">
				<!-- SIDEBAR USERPIC -->
				<div class="profile-userpic">
					<img src="images/logo2.jpg" class="img-responsive" alt="">
				</div>
				<!-- END SIDEBAR USERPIC -->
				<!-- SIDEBAR USER TITLE -->
				<div class="profile-usertitle">
					<div class="profile-usertitle-name">
						<textarea rows="1" cols="20">닉네임/이메일</textarea>
					</div>
				</div>
				<!-- END SIDEBAR USER TITLE -->
				<!-- SIDEBAR BUTTONS -->
				<div class="dropdown">
  				<button class="btn btn-primary dropdown-toggle-dise btn btn-info" type="button" data-toggle="dropdown">감정 카테고리
  				<span class="caret"></span></button>
  					<ul class="dropdown-menu">
    					<li><a href="#">기쁨</a></li>
    					<li><a href="#">우울</a></li>
    					<li><a href="#">화남</a></li>
    					<li><a href="#">신남</a></li>
    					<li><a href="#">와우</a></li>
  					</ul>
				</div>
				<!-- END SIDEBAR BUTTONS -->
				<!-- SIDEBAR MENU -->
				<div class="profile-usermenu">
					<ul class="nav">
					<li>
							<a href="#">
							<i class="glyphicon glyphicon-plus"></i>
							게시물 등록하기 </a>
						</li>
						<li>
							<a href="#">
							<i class="glyphicon glyphicon-home"></i>
						    Main 화면으로 이동</a>
						</li>
						<li>
							<a href="#">
							<i class="glyphicon glyphicon-list-alt"></i>
							자신의 게시물 확인 </a>
						</li>
						<li>
							<a href="#">
							<i class="glyphicon glyphicon-star"></i>
							몰라~~~~~~~~~ </a>
						</li>
					</ul>
				</div>
				<!-- END MENU -->
			</div>
		</div>
	</div>
</div>


</body>
</html>