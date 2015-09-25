<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

			<div class="col col-sm-2">
				<div id="sidebar">
					<ul class="nav nav-stacked">
						<li><h3 class="highlight">
								프로필 <i class="glyphicon glyphicon-user pull-right"></i>
							</h3></li>
						<li><img src="pulpitrock.jpg" alt="프로필사진"
							style="margin-left: 10px; width: 150px; height: 150px"></li>

						<li>닉네임 값 받기</li>
						<li>내가등록한 게시물</li>
					</ul>
					<div class="accordion" id="accordion2">
						<div class="accordion-group">
							<div class="accordion-heading">
								<a class="accordion-toggle" data-toggle="collapse"
									data-parent="#accordion2" href="#collapseOne"> Accordion </a>
							</div>
							<div id="collapseOne" class="accordion-body collapse in">
								<div class="accordion-inner">
									<p>There is a lot to be said about RWD.</p>
								</div>
							</div>
						</div>
						<div class="accordion-group">
							<div class="accordion-heading">
								<a class="accordion-toggle" data-toggle="collapse"
									data-parent="#accordion2" href="#collapseTwo"> Accordion </a>
							</div>
							<br> <br>
							<ul class="nav nav-stacked">
								<li><h3 class="highlight">
										감정 카테고리 <i class="glyphicon glyphicon-user pull-right"></i>
									</h3></li>
								<li><img src="pulpitrock.jpg" alt="나의 감정"
									style="margin-left: 10px; width: 150px; height: 150px"></li>
								<li><br>
									<div class="dropdown">
										<button type="button" class="btn btn-info dropdown-toggle"
											data-toggle="dropdown" style="width: 170px; height: 30px">
											감정 선택 <span class="caret"></span>
										</button>

										<ul class="dropdown-menu">
											<li><a href="#">기쁨</a></li>
											<li><a href="#">분노</a></li>
											<li><a href="#">슬픔</a></li>
											<li><a href="#">우울</a></li>
										</ul>
									</div></li>

							</ul>

							<div id="collapseTwo" class="accordion-body collapse">
								<div class="accordion-inner">
									<p>Use @media queries or utility classes to customize
										responsiveness.</p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
</body>
</html>