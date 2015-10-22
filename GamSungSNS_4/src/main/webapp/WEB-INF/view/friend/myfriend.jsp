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
			var url="<%=request.getContextPath()%>/friendList";
			var data = {userNo:<%=session.getAttribute("loginNo")%>};
			$.ajax({
				type:"post",
				url:url,
				data:data,
				dataType:"json",
				success:function(args){
					 for(idx=0; idx<args.length; idx++) {
						$("#friendList").append("<div class=\"col-sm-4\"><img class=\"img-responsive thumbnail alt=\"\"><div class=\"caption\"><h4><a href=\"#\">"+ args[idx]["NAME"] +"</a></h4><p>"+ args[idx]["ID"] + "</p></div></div>");
						$("#friendList > div > img").attr("src","http://placehold.it/700x350");
						<%-- $("#friendList img:eq("+ (idx) +")").attr("src","<%=request.getContextPath()%>/upload/" + args[idx].usersUserNo +"/"+args[idx].boardNo +"/" + args[idx].imageList[0].fileName); --%>
						abc();
					} 
				}, error:function(e){
					alert(e.responseTxt);
				}
			});
			
			
		});
	</script>
<body>
		<!-- Modal content-->
			<div class="modal-content" id="tmodal">
				<div class="modal-header">
					<button type="button" class="close" id="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title">친구관리</h4>
				</div>
				<!-- Modal content-->
		<div class="modal-body">

			<div class="row">
				<div class="col-sm-12">


					<!-- Image -->
					<div class="container-fluid">
						<div class="row">
							<div class="col-sm-12"></div>
						</div>
						<!-- /.row -->
						<br>
						<div class="row margin-b-2" id="friendList">
												
						</div>
					</div>
				</div>

			</div>
		</div>
				<div class="modal-footer" id="friend-footer">
					<button type="button" class="btn btn-default close" data-dismiss="modal" id="close">닫기</button>
				</div>
			</div>
</body>
