<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<script src="js/jasny-bootstrap.js"></script>
<script type="text/javascript">

/* 	var files = [];
	$(document).on("change","#input-705", function(event) {
                 	files=event.target.files;
	})
	
 */
 
			var files = [];
			$(document).on("change","#input-705", function(event) {
	                 	files=event.target.files;
			})
 		$(function(){
	 		var a;
		 	if("${user['PROFILEPATH']}" == null){
			 	a="http://placehold.it/150x150";	
			}else{
				a="<%=request.getContextPath()%>/upload/${user['USER_NO']}/profile/${user['PROFILEPATH']}";
			}
		 	$("#input-705").fileinput({
			    //uploadUrl: "http://localhost/file-upload-single/1", // server upload action
			    //uploadUrl: uurl,
			    uploadAsync: true,
			    minFileCount: 1,
			    maxFileCount: 1,
			    overwriteInitial: true,
			    initialPreview: [
			        "<img style='height:160px' src='"+a+"'>",
			    ],
			    initialPreviewConfig: [
			        //{caption: "People-1.jpg", width: "120px", url: "/site/file-delete", key: 1},
			    ],
			    uploadExtraData: {
			     //   img_key: "1000",
			     //   img_keywords: "happy, people",
			    }
			});	
		 	
		 	$("#alertUser").click(function(){
				
		   		processUpload();
		 	})
		 	
		 	function processUpload(){
		 		var email = $("#Aemail").val();
		   		var pwd = $("#Apwd").val();
		   		var pwd2 = $("#Apwd2").val();
		   		var name = $("#Aname").val();
		   		var birth = $("#Abirth").val();
		        
		      	var oMyForm = new FormData();
		          oMyForm.append("file", files[0]);
		          var uurl = "<%=request.getContextPath()%>/profileUpdate?email="+email+"&pwd="+pwd+"&name="+name+"&birth="+birth;
		          $.ajax({
		        	 	dataType : 'json',
		                url : uurl,
		                data : oMyForm,
		                type : "POST",
		                enctype: 'multipart/form-data',
		                processData: false, 
		                contentType:false,
		                success : function(result) {
		                    alert("success");
		                    $('#userinfo').toggle();
		                },
		                error : function(result){
		                    alert("fail");
		                }
		            });
		      }
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
								<input type="text" readonly="readonly" class="form-control" id="Aemail" value=${user["USER_ID"]}>	
							</div>
						</div>

						<div class="form-group">
							<label class="control-label col-sm-4" for="pwd">비밀번호</label>
							<div class="col-sm-7">
								<input type="password" class="form-control" id="Apwd" value=${user["password"]}>
							</div>

						</div>

						<div class="form-group">
							<label class="control-label col-sm-4" for="pwd2">비밀번호 확인</label>
							<div class="col-sm-7">
								<input type="password" class="form-control" id="Apwd2" value=${user["password"]}>
							</div>

						</div>

						<div class="form-group">
							<label class="control-label col-sm-4" for="name">이름</label>
							<div class="col-sm-7">
								<input type="text" class="form-control" id="Aname" value=${user["name"]}>
							</div>
						</div>

						<div class="form-group">
							<label class="control-label col-sm-4" for="birth">생년월일</label>
							<div class="col-sm-7">
								<input type="text" class="form-control" id="Abirth" value=${user["birth"]}> <br>

							</div>
						</div>
						
						<label class="control-label">Select File</label>
						<input id="input-705" type="file" class="file" multiple="true" data-show-upload="false" data-show-caption="true">
						

						<button type="button" class="btn btn-info btn-primary btn-block" id="alertUser">
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