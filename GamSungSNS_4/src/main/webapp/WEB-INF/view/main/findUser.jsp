<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<script type="text/javascript">
	$(function(){
		$("#searchButton").click(function(){
			var a = $("#searchEmail");
			var b = $("#searchName");
			var c = $("#searchBirth");
			
			if((a.val() != null) && (b.val() != null) && (c.val() != null)){
				 var url="<%=request.getContextPath()%>/findUser";
					var data={
							userId : a,
							name : b,
							birth : c
					};
					$.ajax({
						type:"post",
						url:url,
						data : data,
						dataType:"json",
						success:function(args){
							alert("비밀번호는 " + args + " 입니다.");
						}, error:function(e){
							//alert(e.responseTxt + "에러발생");
							alert("찾을수 없습니다.");
						}
					});
			}else{
				alert("모든 양식을 입력해 주세요.");
				return;
			}
		});
		
		$("#searchReWriteButton").click(function(){
			a.val("");
			b.val("");
			c.val("");
			$(this).removeData('bs.modal');
		});
	});
</script>
<body>
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
								<input type="email" class="form-control" id="searchEmail"
									placeholder="사용가능한 email을 입력하세요.">
							</div>

						</div>

						<div class="form-group">
							<label class="control-label col-sm-4" for="name">이름</label>
							<div class="col-sm-7">
								<input type="text" class="form-control" id="searchName"
									placeholder="이름을 입력하세요. (특수문자 불가)">
							</div>
						</div>

						<div class="form-group">
							<label class="control-label col-sm-4" for="birth">생년월일</label>
							<div class="col-sm-7">
								<input type="date" class="form-control" id="searchBirth"
									placeholder="생년월일을 입력하세요."> <br>
							</div>
						</div>

						<button type="button" class="btn btn-info btn-primary btn-block" id="searchButton">
							<span class="glyphicon glyphicon-search"></span>비밀번호 찾기
						</button>

						<button type="button" class="btn btn-info btn-primary btn-block" id="searchReWriteButton">
							<span class="glyphicon glyphicon-pencil"></span>다시 작성
						</button>

					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal" id="searchClose">닫기</button>
				</div>
			</div>
</body>
</html>