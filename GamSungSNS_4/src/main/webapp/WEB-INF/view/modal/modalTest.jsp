<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html">
<%-- <%
	if (session.getAttribute("email") != null) {
		RequestDispatcher rd = request.getRequestDispatcher("loging.jsp");
		rd.forward(request, response);
	}
%> --%>
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

<title>Insert title here</title>

</head>
<body>


	<button type="button" class="btn btn-info btn-primary btn-block"
		data-toggle="modal" data-target="#joinModal">
		<span class="glyphicon glyphicon-plus-sign"></span>회원 가입
	</button>
	<button type="button" class="btn btn-info btn-primary btn-block"
		data-toggle="modal" data-target="#findpassModal">
		<span class="glyphicon glyphicon-search"></span>분실
	</button>
	<button type="button" class="btn btn-info btn-primary btn-block"
		data-toggle="modal" data-target="#userinfo">
		<span class="glyphicon glyphicon-search"></span>회원정보보기
	</button>
	<button type="button" class="btn btn-info btn-primary btn-block"
		data-toggle="modal" data-target="#friend">
		<span class="glyphicon glyphicon-search"></span>친구관리
	</button>
	<button type="button" class="btn btn-info btn-primary btn-block"
		data-toggle="modal" data-target="#findfriend">
		<span class="glyphicon glyphicon-search"></span>친구찾기
	</button>
	<button type="button" class="btn btn-info btn-primary btn-block"
		data-toggle="modal" data-target="#myfriend">
		<span class="glyphicon glyphicon-search"></span>친구목록
	</button>
	<button type="button" class="btn btn-info btn-primary btn-block"
		data-toggle="modal" data-target="#myfriendboard">
		<span class="glyphicon glyphicon-search"></span>친구게시물
	</button>
	<button type="button" class="btn btn-info btn-primary btn-block"
		data-toggle="modal" data-target="#friendrequest">
		<span class="glyphicon glyphicon-search"></span>친구요청
	</button>
	<button type="button" class="btn btn-info btn-primary btn-block"
		data-toggle="modal" data-target="#boardmodal">
		<span class="glyphicon glyphicon-search"></span>일반 게시물
	</button>
	<button type="button" class="btn btn-info btn-primary btn-block"
		data-toggle="modal" data-target="#bestboardmodal">
		<span class="glyphicon glyphicon-search"></span>글 등록하기
	</button>



	<!-- Modal -->
	<div id="joinModal" class="modal fade" role="dialog">
		<div class="modal-dialog">
			<jsp:include page="registForm.jsp"></jsp:include>
		</div>
	</div>

	<!-- Modal -->
	<div id="findpassModal" class="modal fade" role="dialog">
		<div class="modal-dialog">
			<jsp:include page="findUser.jsp"></jsp:include>
		</div>
	</div>
	
	<!-- Modal -->
	<div id="userinfo" class="modal fade" role="dialog">
		<div class="modal-dialog">
			<jsp:include page="userinfo.jsp"></jsp:include>
		</div>
	</div>
	
	<!-- Modal -->
	<div id="friend" class="modal fade" role="dialog">
		<div class="modal-dialog">
			<jsp:include page="friend.jsp"></jsp:include>
		</div>
	</div>
	
	<!-- Modal -->
	<div id="findfriend" class="modal fade" role="dialog">
		<div class="modal-dialog">
			<jsp:include page="findfriend.jsp"></jsp:include>
		</div>
	</div>
	
	<!-- Modal -->
	<div id="myfriend" class="modal fade" role="dialog">
		<div class="modal-dialog">
			<jsp:include page="myfriend.jsp"></jsp:include>
		</div>
	</div>
	
	<!-- Modal -->
	<div id="myfriendboard" class="modal fade" role="dialog">
		<div class="modal-dialog">
			<jsp:include page="myfriendboard.jsp"></jsp:include>
		</div>
	</div>

	<!-- Modal -->
	<div id="friendrequest" class="modal fade" role="dialog">
		<div class="modal-dialog">
			<jsp:include page="friendrequest.jsp"></jsp:include>
		</div>
	</div>
	
	<!-- Modal -->
	<div id="boardmodal" class="modal fade" role="dialog">
		<div class="modal-dialog">
			<jsp:include page="boardmodal.jsp"></jsp:include>
		</div>
	</div>
	
	<!-- Modal -->
	<div id="bestboardmodal" class="modal fade" role="dialog">
		<div class="modal-dialog">
			<jsp:include page="bestboardmodal.jsp"></jsp:include>
		</div>
	</div>
	
</body>
</html>