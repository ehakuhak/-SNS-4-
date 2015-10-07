<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Insert title here</title>
</head>
<script src="js/jquery-1.11.2.min.js"></script>
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
						$("#friendList").append("<div class=\"col-sm-4\"><img class=\"img-responsive thumbnail alt=\"\"><div class=\"caption\"><h4><a href=\"#\">"+ args[idx].name +"</a></h4><p>"+ args[idx].content + "</p></div></div>");
						$("friendList > img").attr("src","http://placehold.it/700x350");
						$("#friendList > div > div:last").css({
							/* height:"400px" */
						});
					} 
				}, error:function(e){
					alert(e.responseTxt);
				}
			});
			
			
		});
	</script>
<body>
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
</body>
