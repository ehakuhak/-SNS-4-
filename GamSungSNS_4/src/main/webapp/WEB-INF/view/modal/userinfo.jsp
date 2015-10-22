<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<script type="text/javascript">
/* 	var files = [];
	$(document).on("change","#input-705", function(event) {
                 	files=event.target.files;
	})
 */	$(function(){
		$("#input-705").files = "<%=request.getContextPath()%>/upload/${user['USER_NO']}/profile/${user['PROFILEPATH']}";
	})
</script>
<body>
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
							${user["USER_ID"]}	
							</div>
						</div>

						<div class="form-group">
							<label class="control-label col-sm-4" for="pwd">비밀번호</label>
							<div class="col-sm-7">
								<input type="password" class="form-control" id="pwd" value=${user["password"]}>
							</div>

						</div>

						<div class="form-group">
							<label class="control-label col-sm-4" for="pwd2">비밀번호 확인</label>
							<div class="col-sm-7">
								<input type="password" class="form-control" id="pwd2" value=${user["password"]}>
							</div>

						</div>

						<div class="form-group">
							<label class="control-label col-sm-4" for="name">이름</label>
							<div class="col-sm-7">
								<input type="text" class="form-control" id="name" value=${user["name"]}>
							</div>
						</div>

						<div class="form-group">
							<label class="control-label col-sm-4" for="birth">생년월일</label>
							<div class="col-sm-7">
								<input type="text" class="form-control" id="birth" value=${user["birth"]}> <br>

							</div>
						</div>
						
						<label class="control-label">Select File</label>
						<input id="input-705" type="file" class="file" multiple="true" data-show-upload="false" data-show-caption="true">
						

						<button type="button" class="btn btn-info btn-primary btn-block">
							<span class="glyphicon glyphicon-pencil"></span>수정 하기
						</button>

						<button type="button" class="btn btn-info btn-primary btn-block">
							<span class="glyphicon glyphicon-trash"></span>탈퇴 하기
						</button>



					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-info" data-dismiss="modal">닫기</button>
				</div>
				</div>
			
</body>
</html>