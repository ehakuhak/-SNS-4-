<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="js/jquery-1.11.2.min.js"></script>
<script type="text/javascript">
	$(function(){
	
		<%-- var url="<%=request.getContextPath()%>/WEB-INF/modaltest.jsp" --%>
		$("#content button").click(function(){
			var url = "${pageContext.request.contextPath}/go?page=friend/";
			var a = $(this).attr("id");
			url = url+a;
			$("#content").load(url);
		});
		
	 	$("#content").unload(function(){
			alert("dd");
		});
		
	 	$("#close").click(function(){
	 		var url = "${pageContext.request.contextPath}/go?page=friend/friend";
	 		$("#tmodal").load(url);
		})
	});

</script>
<title>Insert title here</title>
</head>
<body>
		<!-- Modal content-->
			<div class="modal-content" id="tmodal">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title">친구관리</h4>
				</div>
				<div class="modal-body" id="content">

					<form class="form-horizontal" role="form">

						<button type="button" class="btn btn-info btn-primary btn-block" id="findfriend">
							<span class="glyphicon glyphicon-search"></span> 친구 찾기
						</button>

						<button type="button" class="btn btn-info btn-primary btn-block" id="myfriend">
							<span class="glyphicon glyphicon-user"></span> 친구 목록 <span
								class="badge">120</span>
						</button>

						<button type="button" class="btn btn-info btn-primary btn-block" id="friendrequest">
							<span class="glyphicon glyphicon-plus"></span> 친구 요청 <span
								class="badge">5</span>
						</button>

					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-info" data-dismiss="modal" id="close">닫기</button>
				</div>
			</div>
</body>
</html>