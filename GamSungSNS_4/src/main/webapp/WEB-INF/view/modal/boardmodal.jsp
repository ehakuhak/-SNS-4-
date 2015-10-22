<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- bxSlider CSS file -->
<link href="css/jquery.bxslider.css" rel="stylesheet" />
<title>Insert title here</title>
</head>
<script src="js/jquery.bxslider.min.js"></script>
<body>
	<div class="modal-body">
        <p>some content</p>
    	<input type="hidden" name="bookId" id="bookId" value=""/>
    </div>
    
	<!-- Modal content-->
	<div class="modal-content" id="deleted">
		<div class="modal-header">
			<button type="button" class="close" data-dismiss="modal">&times;</button>
	
			<h4 class="modal-title">글 분류</h4>
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
							<div class="col-sm-12 col-sm-push-8">
								<div class="caption">
									<button class="btn btn-primary" type="button" id="recommendCount">
										추천 <span id="btncount" class="badge">0</span>
									</button>
									<button class="btn btn-danger" type="button" id="reportCount">
										신고 <span id="repcount" class="badge">0</span>
									</button>
								</div>
							</div>
							<hr>
							<div class="col-sm-12">
								
								<div id="carousel-example-generic" class="carousel slide"
									data-ride="carousel">
									<!-- Indicators -->
									<ol class="carousel-indicators imglistsize">
										
									</ol>

									<!-- Wrapper for slides -->
									<div class="carousel-inner " role="listbox">
									
									<div class="item active" data-imgLiquid-fill="false" style="width:540px; height:300px;">	
									</div>
								
									</div>

									<!-- <!-- Controls -->
									<a class="left carousel-control"
										href="#carousel-example-generic" role="button"
										data-slide="prev"> <span
										class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
										<span class="sr-only">Previous</span>
									</a> <a class="right carousel-control"
										href="#carousel-example-generic" role="button"
										data-slide="next"> <span
										class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
										<span class="sr-only">Next</span>
									</a>
								</div>
								<div class="caption">
								<div class="row">
									<div class="col-lg-8">
									  <h4>
										<a href="#" id="writerName">닉네임 / 감정</a>
									  </h4>
									</div>
									<div class="col-lg-4">
										<p id="writeday">작성일 : 2015.12.31</p>
									</div>
								</div>
										<p id="boardContent"></p>
								</div>
								<table id="commentTable" class="table table-condensed"></table>
								<table class="table table-condensed">
									<tr>
										<td><span class="form-inline" role="form"> <textarea
													id="commentParentText" class="form-control col-lg-12"
													style="width: 100%" rows="4"></textarea>

												<button type="button" id="commentParentSubmit"
													name="commentParentSubmit" class="btn btn-info pull-right">확인</button>

										</span></td>
									</tr>
								</table>
							</div>
							<hr>
						</div>
					</div>
				</div>
			</div>
		</div>

		<div class="modal-footer">
			<button type="button" class="btn btn-info" data-dismiss="modal">닫기</button>
		</div>
	</div>
	<script>
		$(function() {
			//제일 하단에 있는 depth1의 댓글을 다는 이벤트
			$("#commentParentSubmit").click(function(event) {
								//ajax로 저장하고 성공하면 저장한 데이터를 가져와 넣어야 하는데 여기서는 테스트라 그냥 입력값을 가져옴
								var pUserNo = <%=session.getAttribute("loginNo") %>;
								var pBoardNo = $("#bookId").val();
								var pText = $("#commentParentText").val();
								
								if ($.trim(pText) == "") {
									alert("내용을 입력하세요.");
									$("#commentParentText").focus();
									return;
								}

								var url="<%=request.getContextPath()%>/writeReply";
								var data={
									replyContent : pText,
									boardBoardNo : pBoardNo,
									usersUserNo : pUserNo
								};								
								$.ajax({
									type:"post",
									url:url,
									data : data,
									dataType:"json",
									success:function(args){
										$('#commentTable').empty();
										for(idx = 0; idx < args.length; idx++){
										var commentParentText = '<tr id="r1" name="commentParentCode">'
											+ '<td colspan=2>'
											+ '<strong>'
											+ args[idx].name
											+ '</strong> ('
											+ args[idx].userId
											+ ') <a style="cursor:pointer;" name="pDel" id='+ "\""+args[idx].replyNo+"\"" +'>삭제</a><p>'
											+ args[idx].replyContent.replace(/\n/g, "<br>")
											+ '</p>' + '</td>' + '</tr>';
										if ($('#commentTable').contents().size() == 0) {
											$('#commentTable').append(commentParentText);
										} else {
											$('#commentTable tr:last').after(commentParentText);
										}
										
										}
									}, error:function(e){
										alert(e.responseTxt + "에러발생");
									}
								});
								
								$('#commentParentText').val("");
							});

			//답글링크를 눌렀을때 에디터 창을 뿌려주는 이벤트, 삭제링크를 눌렀을때 해당 댓글을 삭제하는 이벤트
			$(document).on("click", "table#commentTable a",	function() {//동적으로 버튼이 생긴 경우 처리 방식

								if ($(this).attr("name") == "pDel") {
									//alert($(this).attr("id"));
									if (confirm("정말 삭제하시겠습니까?") == true) { //확인
										
										var pBoardNo = $("#bookId").val();
										var pReplyNo = $(this).attr("id");
										var url="<%=request.getContextPath()%>/deleteReply";
										var data={
											boardBoardNo : pBoardNo,
											replyNo : pReplyNo
										};								
										$.ajax({
											type:"post",
											url:url,
											data : data,
											dataType:"json",
											success:function(args){
												$('#commentTable').empty();
												for(idx = 0; idx < args.length; idx++){
												var commentParentText = '<tr id="r1" name="commentParentCode">'
													+ '<td colspan=2>'
													+ '<strong>'
													+ args[idx].name
													+ '</strong> ('
													+ args[idx].userId
													+ ') <a style="cursor:pointer;" name="pDel" id='+ "\""+args[idx].replyNo+"\"" +'>삭제</a><p>'
													+ args[idx].replyContent.replace(/\n/g, "<br>")
													+ '</p>' + '</td>' + '</tr>';
												if ($('#commentTable').contents().size() == 0) {
													$('#commentTable').append(commentParentText);
												} else {
													$('#commentTable tr:last').after(commentParentText);
												}
												
												}
											}, error:function(e){
												alert(e.responseTxt + "에러발생");
											}
										});

									} else { //취소
										return;
									}
								} else {
									//자기 부모의 tr을 알아낸다.
									var parentElement = $(this).parent()
											.parent();
									//댓글달기 창을 없앤다.
									$("#commentEditor").remove();
									//부모의 하단에 댓글달기 창을 삽입
									var commentEditor = '<tr id="commentEditor">'
											+ '<td style="width:1%"> </td>'
											+ '<td>'
											+ '<span class="form-inline" role="form">'
											+ '<p>'
											+ '<div class="form-group">'
											+ '<input type="text" id="commentChildName" name="commentChildName" class="form-control col-lg-2" data-rule-required="true" placeholder="이름" maxlength="10">'
											+ '</div>'
											+ '<div class="form-group">'
											+ ' <input type="password" id="commentChildPassword" name="commentChildPassword" class="form-control col-lg-2" data-rule-required="true" placeholder="패스워드" maxlength="10">'
											+ '</div>'
											+ '<div class="form-group">'
											+ '<button type="button" id="commentChildSubmit" class="btn btn-default">확인</button>'
											+ '</div>'
											+ '</p>'
											+ '<textarea id="commentChildText" name="commentChildText" class="form-control" style="width:98%" rows="4"></textarea>'
											+ '</span>' + '</td>' + '</tr>';

									parentElement.after(commentEditor);
								}

							});

			$("#list").click(function(event) {
				location.href = '/community/notice';
			});
			$("#modify").click(function(event) {
				location.href = '/community/modify/notice/${community.id}';
			});
			$("#delete").click(function(event) {
				location.href = '/community/delete/notice/${community.id}';
			});
			$("#write").click(function(event) {
				location.href = '/community/notice/edit';
			});
			/* $('.bxslider').bxSlider(); */
			 
		});
		
		$(function(){
			$("#recommendCount").click(function(){
				var url="<%=request.getContextPath()%>/updateRec";
				var myBookId = $(".modal-body #bookId").val();
				var userNo = <%=session.getAttribute("loginNo")%>;
				var data={
						boardNo : myBookId,
						userNo : userNo
				};
				$.ajax({
					type:"post",
					url:url,
					data : data,
					dataType:"json",
					success:function(args){
						if(args == "success"){
							$("#btncount").text(parseInt($("#btncount").text())+1);	
						}else if(args == "fail"){
							alert("이미 추천 하셨습니다.");
						}
						
					}, error:function(e){
						alert(e.responseTxt + "에러발생");
					}
				});	
			});
		
			$("#reportCount").click(function(){
				var url="<%=request.getContextPath()%>/updateRep";
				var myBookId = $(".modal-body #bookId").val();
				var userNo = <%=session.getAttribute("loginNo")%>;
				var data={
						boardNo : myBookId,
						userNo : userNo
				};
				$.ajax({
					type:"post",
					url:url,
					data : data,
					dataType:"json",
					success:function(args){
						if(args == "success"){
							$("#repcount").text(parseInt($("#repcount").text())+1);	
						}else if(args == "fail"){
							alert("이미 신고 하셨습니다.");
						}
						
					}, error:function(e){
						alert(e.responseTxt + "에러발생");
					}
				});	
			});
		})
	</script>
</body>

</html>