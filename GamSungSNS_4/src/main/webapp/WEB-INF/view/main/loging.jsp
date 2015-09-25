<%@page import="dto.Board"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%
	 if (session.getAttribute("loginNo") == null) {
		RequestDispatcher rd = request.getRequestDispatcher("main/serviceMain.jsp");
		rd.forward(request, response);
	} 
%>
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
				top : -1
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

#test2 {
	margin-left: -30px;
	margin-top: 50px;
}

#test1 {
	margin-left: -30px;
	margin-top: 28px;
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
	min-width: 170px;
	text-align: center;
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
	<%@include file="boader/top.jsp"%>
	<%-- <jsp:include page="boader/top.jsp"></jsp:include> --%>
	<!-- /.navbar -->

	<!-- Begin Body -->
	<div class="container">
	<div class="row">
	<%@include file="boader/left.jsp"%>
	
<!-- 본문 은 여기 -->
<!-- 추천글 -->
			<div class="col col-sm-10">
				<div class="panel">

					<div class="row">
						<div class="col col-sm-6">
							<img src="pulpitrock.jpg" alt="이번주 추천사진"
								style="margin-top: 69px; width: 430px; height: 210px">

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

							<div class="container" id="test1">


								<div class="col-md-6">
									<a href="pulpitrock.jpg" class="thumbnail">
										<div class="row">
											<div class="col col-sm-9">
												<p>작성자</p>
											</div>
											<div class="col col-sm-3">

												<span class="glyphicon glyphicon-heart">5000</span> <span
													class="glyphicon glyphicon-trash">50</span>

											</div>
										</div>
										<div class="row">
											<div class="col col-sm-4">
												<img src="pulpitrock.jpg" alt="프로필사진"
													style="margin-left: 10px; width: 150px; height: 150px">
											</div>
											<div class="col col-sm-8">맛있다맛있어 맛있다맛있어 맛있다맛있어 맛있다맛있어
												맛있다맛있어 맛있다맛있어 맛있다맛있어맛있다맛있어맛있다맛있어맛있다맛있어</div>
										</div> <br>
									</a>
								</div>


							</div>
						</div>
					</div>



<!-- 본문 -->
					<div class="container" id="test2">
					<%-- <h2>${boardList}</h2> --%>
					<% List<Board> boardList = (List<Board>)request.getAttribute("boardList"); %>
					<% out.print(boardList.size() + "<br>"); 
						for(Board board : boardList){
							//out.print(board.toString() + "<br>");
					%>
							<div class="col-md-3">
							<a href="pulpitrock.jpg" class="thumbnail">
								<div class="row">
									<div class="col col-sm-7">
										<p><%=board.getName() %></p>
									</div>
									<div class="col col-sm-5">
										<span class="glyphicon glyphicon-heart"><%=board.getRecommendCount() %></span> <span
											class="glyphicon glyphicon-trash"><%=board.getReportCount() %></span>
									</div>
								</div>
								<div class="row">
									<div class="col col-sm-8">
										<img src="pulpitrock.jpg" alt="프로필사진"
											style="margin-left: 10px; width: 220px; height: 150px">
									</div>
								</div> <br>
								<div class="row">
									<div class="col col-sm-12"><%=board.getContent() %></div>

								</div>
							</a>
						</div>
					<%
						}
					
					%>
					

						

					</div>

				</div>
			</div>
		</div>
	</div>

	<!-- Modal -->
	<div id="userinfoModal" class="modal fade" role="dialog">
		<div class="modal-dialog">

			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title">회원정보</h4>
				</div>
				<div class="modal-body">

					<form class="form-horizontal" role="form">

						<div class="form-group">
							<label class="control-label col-sm-4" for="email">아이디 </label>
							<div class="col-sm-8" style="margin-top: 6px;">
								<%=id%>
							</div>
						</div>

						<div class="form-group">
							<label class="control-label col-sm-4" for="pwd">비밀번호</label>
							<div class="col-sm-7">
								<input type="password" class="form-control" id="pwd"
									placeholder="비밀번호를 입력하세요.">
							</div>

						</div>

						<div class="form-group">
							<label class="control-label col-sm-4" for="pwd2">비밀번호 확인</label>
							<div class="col-sm-7">
								<input type="password" class="form-control" id="pwd2"
									placeholder="비밀번호를 확인하세요.">
							</div>

						</div>

						<div class="form-group">
							<label class="control-label col-sm-4" for="name">이름</label>
							<div class="col-sm-7">
								<input type="text" class="form-control" id="name"
									placeholder="이름을 입력하세요. (특수문자 불가)">
							</div>
						</div>

						<div class="form-group">
							<label class="control-label col-sm-4" for="birth">생년월일</label>
							<div class="col-sm-7">
								<input type="text" class="form-control" id="birth"
									placeholder="생년월일을 입력하세요."> <br>



							</div>
						</div>

						<button type="button" class="btn btn-info btn-primary btn-block">
							<span class="glyphicon glyphicon-pencil"></span>수정 하기
						</button>

						<button type="button" class="btn btn-info btn-primary btn-block">
							<span class="glyphicon glyphicon-trash"></span>탈퇴 하기
						</button>



					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
				</div>
			</div>
		</div>
	</div>


	<!-- Modal -->
	<div id="friendModal" class="modal fade" role="dialog">
		<div class="modal-dialog">

			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title">친구관리</h4>
				</div>
				<div class="modal-body">

					<form class="form-horizontal" role="form">

						<button type="button" class="btn btn-info btn-primary btn-block">
							<span class="glyphicon glyphicon-search"></span> 친구 찾기
						</button>

						<button type="button" class="btn btn-info btn-primary btn-block">
							<span class="glyphicon glyphicon-user"></span> 친구 목록 <span
								class="badge">120</span>
						</button>

						<button type="button" class="btn btn-info btn-primary btn-block">
							<span class="glyphicon glyphicon-plus"></span> 친구 요청 <span
								class="badge">5</span>
						</button>

					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
				</div>
			</div>
		</div>
	</div>

</body>
</html>