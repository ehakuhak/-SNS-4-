<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<!-- JQuery scripts -->
<script type="text/javascript">
	$(function(){
		$("#srch-button").click(function(){
			var url="<%=request.getContextPath()%>/searchUser";
			var data = {
				key : $("#search_term").val()
			};
			$.ajax({
				type : "post",
				url : url,
				data : data,
				dataType : "json",
				success : function(args) {
					$("#serachFriend").empty();
					for (idx = 0; idx < args.length; idx++) {
						$("#serachFriend").append("<div class=\"row margin-b-2\"> "
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
												+ "<button type=\"button\" class=\"btn btn-info addFriend onclick=\"clickf()\" \">친구 추가</button><br><br></div></div></div> "
												);
						$("img").attr("src","http://placehold.it/150x150");
					<%-- 	$("#serachFriend img:eq("+ (idx) +")").attr("src","<%=request.getContextPath()%>/upload/" + args[idx].usersUserNo +"/"+args[idx].boardNo +"/" + args[idx].imageList[0].fileName); --%>
						abc();
						}
					},
					error : function(e) {
											//alert(e.responseTxt);
						}
					});
		});
		
		
	})
	
	function clickf(){
		alert("dfd");
	}
	 
	$(function(){
		$(".addFriend").click(function(){
			alert("abcd");
		})	
	}) 
	
</script>
<body>
	<!-- Modal content-->
	<div class="modal-content" id="tmodal">
		<div class="modal-header">
			<button type="button" class="close" id="close" data-dismiss="modal">&times;</button>
			<h4 class="modal-title">친구관리</h4>
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
						<div class="input-group input-group-sm" style="max-width: 160px;">
							<input type="text" class="form-control" placeholder="검색"
								name="srch-term" id="search_term">
							<div class="input-group-btn">
								<button class="btn btn-info  btn-primary btn-block" type="button" id="srch-button">
									<i class="glyphicon glyphicon-search"></i>
								</button>
							</div>
						</div>
						<br>

						<div id="serachFriend">
					

						</div>

					</div>
				</div>
			</div>
		</div>
	<div class="modal-footer" id="friend-footer">
			<button type="button" class="btn btn-default close"
				data-dismiss="modal" id="close">닫기</button>
		</div>
	</div>

</body>
</html>