<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- Modal content-->
	<div class="modal-content" id="tmodal">
		<div class="modal-header">
			<button type="button" class="close" id="close" data-dismiss="modal">&times;</button>
			<h4 class="modal-title">친구관리</h4>
		</div>
		<div class="modal-body" id="mmscl">

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