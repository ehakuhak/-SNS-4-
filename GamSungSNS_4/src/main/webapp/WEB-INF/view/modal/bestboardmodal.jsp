<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>

<title>Insert title here</title>
<!-- file input -->
<script type="text/javascript">
	$(function(){
		$("#reg").click(function(){
		
			var pUserNo = <%=session.getAttribute("loginNo") %>;
			var pText = $("#comment").val();
			var pEmotion = $("#selectemotion").val();
			//console.log(pUserNo + pText + pEmotion);
			if ($.trim(pText) == "") {
				alert("내용을 입력하세요.");
				$("#comment").focus();
				return;
			}
			/* form.append("content", pText);
			form.append("usersUserNo", pUserNo);
			form.append("emotionNo", pEmotion); */
			var url="<%=request.getContextPath()%>/registBoard";
			var data={
				content : pText,
				usersUserNo : pUserNo,
				emotionNo : pEmotion
			};						
			$.ajax({
				type:"post",
				url:url,
				data : data,
				dataType:"json",
				success:function(args){
					//alert("success");
					$('#comment').val("");
					$(".dz-complete").remove();
					$("#boardwrite").modal('hide');
					$("#jtest").empty();
					scrollNum = 1;
					loadBoard($('#emotionSelector > .active').attr("id"));
				}, error:function(e){
					alert(e.responseTxt + "에러발생");
				}
			});
			
			
			
			
		});	
	});
	
</script>
</head>
<body>
	<!-- Modal content-->
	<div class="modal-content">
		<div class="modal-header">
			<button type="button" class="close" data-dismiss="modal">&times;</button>
			<h4 class="modal-title">글 등록하기</h4>
		</div>
		<div class="modal-body">
			<div class="row">
				<div class="col-sm-12">
					<!-- Image -->
					<div class="container-fluid">
						<div class="row">
							<div class="col-sm-12"></div>
						</div>
						<!-- /.row -->
						<div class="row margin-b-2">
							<div class="col-sm-12">
								<div class="caption"></div>
								
								<div>
								
								<div class="col-sm-12">
									<textarea class="form-control" rows="10" id="comment"></textarea>
									<hr>
									<%-- action="<%=request.getContextPath()%>/upload"  --%>
									<form action="<%=request.getContextPath()%>/upload?userNo=<%=session.getAttribute("loginNo") %>" class="dropzone col-sm-12" id="mdrop" enctype="multipart/form-data">
										<div class="fallback">
										<input id="ifile" name="file" type="file" accept="image/*" multiple />
										</div>
									</form>
								</div>
								<hr>
								
								<!-- <div class="col-sm-12">
									<input id="input-709" name="kartik-input-709[]" type="file"
										multiple class="file-loading">
									<div id="kv-error-1" style="margin-top: 10px; display: none"></div>
									<div id="kv-success-1" class="alert alert-success fade in"
										style="margin-top: 10px; display: none"></div>
								</div> -->
								
								</div>
							</div>
							
						</div>
					</div>
				</div>
			</div>
			<div class="modal-footer">
			
			<select id="selectemotion" class="btn btn-info">
				<option value="1">우울
				<option value="2">기쁨
				<option value="3">놀람
				<option value="4">두려움
				<option value="5">분노
				<option value="6">혐오
			</select>
				<button type="button" class="btn btn-info" data-dismiss="modal" id="reg">등록</button>
				<button type="button" class="btn btn-info" data-dismiss="modal" id="close">닫기</button>
			</div>
		</div>
	</div>
</body>
</html>