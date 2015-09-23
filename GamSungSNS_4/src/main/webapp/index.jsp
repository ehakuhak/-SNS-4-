<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html">
<html>
<<<<<<< HEAD
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


<style type="text/css">
h1 {
	color: orange;
}
=======
	<head>
		<meta charset="utf-8">
		<title>Welcome</title>
	</head> 
	<body>
		페이지 구성을 index에서 로그인 쿠키가 남아있으면 메인 컨텐츠 화면,
		로그인 기록이 없으면 로그인 페이지로 자동 리다이렉트 한다. <br>
		<c:url value="/go?page=templet" var="messageUrl" />
		<a href="${messageUrl}">templet</a><br>
		
		<c:url value="/go?page=registForm" var="messageUrl" />
		<a href="${messageUrl}">registForm</a><br>
		
		<c:url value="/go?page=loginForm" var="messageUrl" />
		<a href="${messageUrl}">loginForm</a><br>
		
		<c:url value="/showMessage.html" var="messageUrl" />
		<a href="${messageUrl}">Click to enter</a><br>
	 	if(로그인 쿠기 있으면){
			<c:url value="/view?target=done" var="messageUrl" />
			<a href="${messageUrl}">메인 페이지</a><br>	
		}else(쿠기 기록 없으면){
			<c:url value="/view?target=undone" var="messageUrl" />
			<a href="${messageUrl}">로그인 페이지</a><br>
		}
		<br>
		
		<c:url value="/go?page=serviceMain" var="messageUrl" />
		<a href="${messageUrl}">메인 테스트</a><br>
		
		<c:url value="/go?page=join" var="messageUrl" />
		<a href="${messageUrl}">회원가입 테스트</a><br>
		
		<c:url value="/go?page=userinfo" var="messageUrl" />
		<a href="${messageUrl}">회원정보 수정 테스트</a><br>
		
		<c:url value="/go?page=findPass" var="messageUrl" />
		<a href="${messageUrl}">비밀번호 찾기 테스트</a><br>
		
		<c:url value="/go?page=loging" var="messageUrl" />
		<a href="${messageUrl}">로그인시 메인 테스트</a><br>
		
		<c:url value="/go?page=friend" var="messageUrl" />
		<a href="${messageUrl}">친구검색 테스트</a><br>
>>>>>>> branch 'master' of https://github.com/ehakuhak/-SNS-4-.git

<<<<<<< HEAD
body {
	background-image: url("images/logo.jpg");
	background-repeat: no-repeat;
	background-position: center;
	
	margin-top: 300px;
}
</style>

<title>Insert title here</title>
<%
	String errMsg = (String)request.getAttribute("errMsg");
	if(errMsg==null){
		errMsg="";
	}
%>
</head>
<body>

<c:url value="/go?page=process" var="process" />

	<h1>메인페이지</h1>

	<form class="form-horizontal" role="form" id="loginForm" method="post" action="${process}">

		<div class="form-group">
			<label class="control-label col-sm-5" for="email"></label>
			<div class="col-sm-2">
				<input type="email" class="form-control" id="email" name="email"
					placeholder="아이디">
			</div>

		</div>

		<div class="form-group">
			<label class="control-label col-sm-5" for="pwd"></label>
			<div class="col-sm-2">
				<input type="password" class="form-control" id="pwd" name="pwd"
					placeholder="비밀번호"> <br>
				<div id="error"><%=errMsg %></div>
				<button type="submit" class="btn btn-info btn-primary btn-block">
					<span class="glyphicon glyphicon-user"></span>로그인
				</button>
				<button type="button" class="btn btn-info btn-primary btn-block"
					data-toggle="modal" data-target="#joinModal">
					<span class="glyphicon glyphicon-plus-sign"></span>회원 가입
				</button>
				<button type="button" class="btn btn-info btn-primary btn-block" data-toggle="modal" data-target="#findpassModal">
					<span class="glyphicon glyphicon-search"></span>분실
				</button>

			</div>
		</div>

	</form>


	<!-- Modal -->
	<div id="joinModal" class="modal fade" role="dialog">
		<div class="modal-dialog">

			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title">회원가입</h4>
				</div>
				<div class="modal-body">

					<form class="form-horizontal" role="form">

						<div class="form-group">
							<label class="control-label col-sm-4" for="email">아이디</label>
							<div class="col-sm-7">
								<input type="email" class="form-control" id="email"
									placeholder="사용가능한 email을 입력하세요.">
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
							<span class="glyphicon glyphicon-plus-sign"></span>가입 하기
						</button>

						<button type="button" class="btn btn-info btn-primary btn-block">
							<span class="glyphicon glyphicon-pencil"></span>다시 작성
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
	<div id="findpassModal" class="modal fade" role="dialog">
		<div class="modal-dialog">

			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title">비밀번호 찾기</h4>
				</div>
				<div class="modal-body">

					<form class="form-horizontal" role="form">

						<div class="form-group">
							<label class="control-label col-sm-4" for="email">아이디</label>
							<div class="col-sm-7">
								<input type="email" class="form-control" id="email"
									placeholder="사용가능한 email을 입력하세요.">
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
							<span class="glyphicon glyphicon-search"></span>비밀번호 찾기
						</button>

						<button type="button" class="btn btn-info btn-primary btn-block">
							<span class="glyphicon glyphicon-pencil"></span>다시 작성
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
=======
		<c:url value="/go?page=myfriend" var="messageUrl" />
		<a href="${messageUrl}">등록된 친구 테스트</a><br>
		
		<c:url value="/go?page=requestfriend" var="messageUrl" />
		<a href="${messageUrl}">친구 요청</a><br>
		
		<c:url value="/go?page=board" var="messageUrl" />
		<a href="${messageUrl}">게시판 테스트</a><br>
		
		<c:url value="/go?page=insertboard" var="messageUrl" />
		<a href="${messageUrl}">게시판 등록하기 테스트</a><br>
		
		<c:url value="/go?page=updateboard" var="messageUrl" />
		<a href="${messageUrl}">게시판 수정/삭제하기 테스트</a><br>
		
		<c:url value="/go?page=emotionboardlist" var="messageUrl" />
		<a href="${messageUrl}">감정 카테고리 게시판</a><br>
		
		<c:url value="/go?page=myboard" var="messageUrl" />
		<a href="${messageUrl}">자신이 등록한 게시판</a><br>
		
		<c:url value="/go?page=selectboard" var="messageUrl" />
		<a href="${messageUrl}">선택한 게시판 view</a><br>
		
	</body>
</html>
>>>>>>> branch 'master' of https://github.com/ehakuhak/-SNS-4-.git
