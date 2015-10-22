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
		$("#srch-button").click(function(){
			var url="<%=request.getContextPath()%>/requiredList";
			var data = {
				userNo : <%=session.getAttribute("loginNo")%>
			};
			$.ajax({
				type : "post",
				url : url,
				data : data,
				dataType : "json",
				success : function(args) {
					$("#requiredList").empty();
					for (idx = 0; idx < args.length; idx++) {
						$("#requiredList").append("<div class=\"row margin-b-2\"> "
												+ "<div class=\"col-lg-5 col-md-5 col-sm-5 col-xs-5\">"
												+ "<img class=\"img-responsive\" >"
												+ "</div> "
												+ "<div class=\"col-lg-7 col-md-7 col-sm-7 col-xs-7\"> "
												+ "<div class=\"caption\"> "
												+ "<h3><a href=\"#\">"
												+ args[idx]["USER_ID"]
												+ "</a></h3> "
												+ "<h4><a href=\"#\">"
												+ args[idx]["NAME"]
												+ " </a></h4> "
												+ "<button type=\"button\" id="+args[idx]["USER_NO"] +" class=\"btn btn-info addFriend \">친구 수락</button><br><br></div></div></div> "
												);
						//$("img").attr("src","http://placehold.it/150x150");
					<%-- 	$("#serachFriend img:eq("+ (idx) +")").attr("src","<%=request.getContextPath()%>/upload/" + args[idx].usersUserNo +"/"+args[idx].boardNo +"/" + args[idx].imageList[0].fileName); --%>
						if(args[idx].PROFILEPATH == null){
							$("#requiredList > div > div > img:eq("+ (idx) +")").attr("src","http://placehold.it/150x150");	
						}else{
							$("#requiredList > div > div > img:eq("+ (idx) +")").attr("src","<%=request.getContextPath()%>/upload/" + args[idx].USER_NO + "/profile/"+args[idx].PROFILEPATH);
						}	
						abc();
						}
					},
					error : function(e) {
											//alert(e.responseTxt);
						}
					});
		});
		
		
	})
	
	$(document).on("click",".addFriend",function(e){
		var a = this.id;
		var b = <%=session.getAttribute("loginNo")%>
 		
 			var url="<%=request.getContextPath()%>/requireFriend";
			var data = {
					loginNo : b,
					userNo : a
			}
			$.ajax({
				type:"post",
				url:url,
				data:data,
				dataType:"json",
				success:function(args){
					alert("친구 수락 함"); 
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
				<div class="modal-body">

		<div class="row" id="body10">
			<div class="col-sm-12">


				<!-- Image -->
				<div class="container-fluid" id="requiredList">
					<div class="row">
						<div class="col-sm-12"></div>
					</div>
					<!-- /.row -->
				
					<br>

				<!-- 	<div class="row margin-b-2">
						<div class="col-sm-5">
							<img class="img-responsive thumbnail"
								src="http://placehold.it/150x150" alt="">
						</div>
						<div class="col-sm-7">

							
						</div>
					</div>
 -->

				</div>
			</div>
		</div>

	</div>
				<div class="modal-footer" id="friend-footer">
					<button type="button" class="btn btn-default close" data-dismiss="modal" id="close">닫기</button>
				</div>
			</div>
		
</body>
</html>