<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<!-- Latest compiled JavaScript -->
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
<script>
	$(document).ready(function() {
		$('#sidebar').affix({
			offset : {
				top : -1
			}
		});

	});
</script>
<style type="text/css">
/* h1 {
	color: orange;
}

.navbar {
	color: #FFFFFF;
	background-color: #B2EBF4;
} */

/* bootstrap 3 helpers */
.navbar-form input, .form-inline input {
	width: auto;
}

#sidebar {
	margin-top: 100px;
}

/* end */

/* custom theme */

@media ( min-width : 979px) {
	#sidebar.affix-top {
		position: static;
	}
	#sidebar.affix {
		position: fixed;
		top: 0;
		width: 21.2%;
	}
}

.affix, .affix-top {
	position: static;
}

/* theme */
body {
	color: #828282;
	margin-top: 100px;
}

a, a:hover {
	color: #B2EBF4;
	text-decoration: none;
}

.highlight-bk {
	background-color: #B2EBF4;
	padding: 1px;
	width: 100%;
}

.highlight {
	color: #B2EBF4;
}

h3.highlight {
	padding-top: 13px;
	padding-bottom: 14px;
	border-bottom: 2px solid #B2EBF4;
}

.navbar {
	background-color: #B2EBF4;
	color: #ffffff;
	border: 0;
	border-radius: 0;
}

.navbar-nav>li>a {
	color: #fff;
	padding-left: 20px;
	padding-right: 20px;
	border-left: 1px solid #B2EBF4;
}

.navbar-nav>li>a:hover, .navbar-nav>li>a:focus {
	color: #666666;
}

.navbar-nav>li:last-child>a {
	border-right: 1px solid #B2EBF4;
}

.navbar-nav>.active>a, .navbar-nav>.active>a:hover, .navbar-nav>.active>a:focus
	{
	color: #ffffff;
	background-color: transparent;
}

.navbar-nav>.open>a, .navbar-nav>.open>a:hover, .navbar-nav>.open>a:focus
	{
	color: #f0f0f0;
	background-color: transparent;
	opacity: .9;
	border-color: #B2EBF4;
}

.nav .open>a {
	border-color: #777777;
	border-width: 0;
}

.accordion-group {
	border-width: 0;
}

.dropdown-menu {
	min-width: 250px;
}

.accordion-heading .accordion-toggle, .accordion-inner, .nav-stacked li>a
	{
	padding-left: 1px;
}

.caret {
	color: #fff;
}

.navbar-toggle {
	color: #fff;
	border-width: 0;
}

.navbar-toggle:hover {
	background-color: #fff;
}

.panel {
	padding-left: 27px;
	padding-right: 27px;
}

/* end theme */
</style>
<title>Insert title here</title>
</head>
<body>

	<nav class="navbar navbar-bright navbar-fixed-top" role="banner">
	<div class="container">
		<a class="navbar-toggle" data-toggle="collapse"
			data-target=".nav-collapse"> <span
			class="glyphicon glyphicon-chevron-down"></span>
		</a>
		<div class="nav-collapse collase">
			<ul class="nav navbar-nav">
				<li><br>로고삽입</li>
				<li><form class="navbar-form navbar-left">
						<div class="input-group input-group-sm" style="max-width: 360px;">
							<input type="text" class="form-control" placeholder="검색"
								name="srch-term" id="srch-term">
							<div class="input-group-btn">
								<button class="btn btn-info" type="button">
									<i class="glyphicon glyphicon-search"></i>
								</button>
							</div>
						</div>
					</form></li>
				<li><a href="#">Link</a></li>
			</ul>
			<ul class="nav navbar-right navbar-nav">

				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown"><i class="glyphicon glyphicon-user">사용자
							닉네임</i> <i class="glyphicon glyphicon-chevron-down"></i></a>
					<ul class="dropdown-menu">
						<li><a href="#">친구관리</a></li>
						<li><a href="#">회원정보 수정</a></li>
						<li class="divider"></li>
						<li><a href="#">로그아웃</a></li>
					</ul></li>
			</ul>
		</div>
	</div>
	</nav>

	<!-- /.navbar -->

	<!-- Begin Body -->
	<div class="container">
		<div class="row">
			<div class="col col-sm-2">
				<div id="sidebar">
					<ul class="nav nav-stacked">
						<li><h3 class="highlight">
								프로필 <i class="glyphicon glyphicon-user pull-right"></i>
							</h3></li>
						<li><a href="#">사진 위치</a></li>
						<li>1</li>
						<li>1</li>
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
							<br>
							<br>
							<br>
							<br>
							<br>
							<ul class="nav nav-stacked">
								<li><h3 class="highlight">
										감정 카테고리 <i class="glyphicon glyphicon-user pull-right"></i>
									</h3></li>
								<li><a href="#">사진 위치</a></li>
								<li>1</li>
								<li>1</li>
								<li>닉네임 값 받기</li>
								<li>내가등록한 게시물</li>
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


			<div class="col col-md-10">
				<div class="panel">

					<div class="row">
						<div class="col col-md-12">
							<br> <br>


							<!-- 좌우측의 공간 확보 -->
	
 <div class="container">
  <h2>Modal Example</h2>
  <!-- Trigger the modal with a button -->
  <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal">Open Modal</button>

  <!-- Modal -->
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>
            
            <div class="row">
                <div class="col-md-12">
                    <table class="table table-condensed">
                        <tbody>
                            <tr>
                                <td>작성일
                                </td>
                                <td>
                                2014-12-15 04:45:23
                                </td>
                            </tr>
                            <tr>
                                <td>글쓴이
                                </td>
                                <td>
                                husk <span style='float:right'>조회 : 0</span>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <p>이름, 패스워드 내용을 적으시고 확인버튼을 누르세요.</p>
                                    <p>이름, 패스워드 내용을 적으시고 확인버튼을 누르세요.</p>
                                    <p>이름, 패스워드 내용을 적으시고 확인버튼을 누르세요.</p>
                                    <p>이름, 패스워드 내용을 적으시고 확인버튼을 누르세요.</p>
                                    <p>이름, 패스워드 내용을 적으시고 확인버튼을 누르세요.</p>
                                    <p>이름, 패스워드 내용을 적으시고 확인버튼을 누르세요.</p>
                                    <p>이름, 패스워드 내용을 적으시고 확인버튼을 누르세요.</p>
                                    <p>이름, 패스워드 내용을 적으시고 확인버튼을 누르세요.</p>
                                    <p>이름, 패스워드 내용을 적으시고 확인버튼을 누르세요.</p>
                                    <p>이름, 패스워드 내용을 적으시고 확인버튼을 누르세요.</p>
                                    <p>이름, 패스워드 내용을 적으시고 확인버튼을 누르세요.</p>
                                    <p>이름, 패스워드 내용을 적으시고 확인버튼을 누르세요.</p>
                                    <p>이름, 패스워드 내용을 적으시고 확인버튼을 누르세요.</p>
                                    <p>이름, 패스워드 내용을 적으시고 확인버튼을 누르세요.</p>
                                    <p>이름, 패스워드 내용을 적으시고 확인버튼을 누르세요.</p>
                                    <p>이름, 패스워드 내용을 적으시고 확인버튼을 누르세요.</p>
                                    <p>이름, 패스워드 내용을 적으시고 확인버튼을 누르세요.</p>
                                    <p>이름, 패스워드 내용을 적으시고 확인버튼을 누르세요.</p>
                                    <p>이름, 패스워드 내용을 적으시고 확인버튼을 누르세요.</p>
                                    <p>이름, 패스워드 내용을 적으시고 확인버튼을 누르세요.</p>
                                    <p>이름, 패스워드 내용을 적으시고 확인버튼을 누르세요.</p>
                                    <p>이름, 패스워드 내용을 적으시고 확인버튼을 누르세요.</p>
                                    <p>이름, 패스워드 내용을 적으시고 확인버튼을 누르세요.</p>
                                    <p>이름, 패스워드 내용을 적으시고 확인버튼을 누르세요.</p>
                        
                                </td>
                            </tr>
                        </tbody>
                    </table>
                    </div>
                    </div>
                    <div class="modal-body">
                    <table id="commentTable" class="table table-condensed"></table>
                    <table class="table table-condensed">
                        <tr>
                            <td>
                                <span class="form-inline" role="form">
                                    <p>
                                        <div class="form-group">
                                            <input type="text" id="commentParentName" name="commentParentName" class="form-control col-lg-2" data-rule-required="true" placeholder="이름" maxlength="10">
                                        </div>
                                        <div class="form-group">
                                            <input type="password" id="commentParentPassword" name="commentParentPassword" class="form-control col-lg-2" data-rule-required="true" placeholder="패스워드" maxlength="10">
                                        </div>
                                        <div class="form-group">
                                            <button type="button" id="commentParentSubmit" name="commentParentSubmit" class="btn btn-default">확인</button>
                                        </div>
                                    </p>
                                        <textarea id="commentParentText" class="form-control col-lg-12" style="width:100%" rows="4"></textarea>
                                </span>
                            </td>
                        </tr>
                    </table>
                    </div>
                    <div class="modal-footer">
                    <table class="table table-condensed">
                        <thead>
                            <tr>
                                <td>
                                    <span style='float:right'>
                                        <button type="button" id="list" class="btn btn-default">좋아용</button>
                                        <button type="button" id="modify" class="btn btn-default">신고</button>
                                    </span>
                                </td>
                            </tr>
                        </thead>
                    </table>
                    </div>
                    <script>
   
                        $(function(){
                               
                            //제일 하단에 있는 depth1의 댓글을 다는 이벤트
                            $("#commentParentSubmit").click(function( event ) {
                                   
                                //ajax로 저장하고 성공하면 저장한 데이터를 가져와 넣어야 하는데 여기서는 테스트라 그냥 입력값을 가져옴
                                var pName = $("#commentParentName");
                                var pPassword = $("#commentParentPassword");//패스워드를 노출 시켰는데 저장하고 나서 저장한 날짜를 보여줄 예정
                                var pText = $("#commentParentText");
                                   
                                if($.trim(pName.val())==""){
                                    alert("이름을 입력하세요.");
                                    pName.focus();
                                    return;
                                }else if($.trim(pPassword.val())==""){
                                    alert("패스워드를 입력하세요.");
                                    pPassword.focus();
                                    return;
                                }else if($.trim(pText.val())==""){
                                    alert("내용을 입력하세요.");
                                    pText.focus();
                                    return;
                                }
                                   
                                var commentParentText = '<tr id="r1" name="commentParentCode">'+
                                                            '<td colspan=2>'+
                                                                '<strong>'+pName.val()+'</strong> '+pPassword.val()+' <a style="cursor:pointer;" name="pAdd">답글</a> | <a style="cursor:pointer;" name="pDel">삭제</a><p>'+pText.val().replace(/\n/g, "<br>")+'</p>'+
                                                            '</td>'+
                                                        '</tr>';
                                   
                                //테이블의 tr자식이 있으면 tr 뒤에 붙인다. 없으면 테이블 안에 tr을 붙인다.
                                if($('#commentTable').contents().size()==0){
                                    $('#commentTable').append(commentParentText);
                                }else{
                                    $('#commentTable tr:last').after(commentParentText);
                                }
                                   
                                $("#commentParentName").val("");
                                $("#commentParentPassword").val("");
                                $("#commentParentText").val("");
                                   
                            });
                               
                            //댓글의 댓글을 다는 이벤트
                            $(document).on("click","#commentChildSubmit", function(){
                                   
                                var cName = $("#commentChildName");
                                var cPassword = $("#commentChildPassword");
                                var cText = $("#commentChildText");
                                   
                                if($.trim(cName.val())==""){
                                    alert("이름을 입력하세요.");
                                    cName.focus();
                                    return;
                                }else if($.trim(cPassword.val())==""){
                                    alert("패스워드를 입력하세요.");
                                    cPassword.focus();
                                    return;
                                }else if($.trim(cText.val())==""){
                                    alert("내용을 입력하세요.");
                                    cText.focus();
                                    return;
                                }
                                   
                                var commentChildText = '<tr name="commentChildCode">'+
                                                            '<td style="width:1%"><span class="glyphicon glyphicon-arrow-right"></span></td>'+
                                                            '<td style="width:99%">'+
                                                                '<strong>'+cName.val()+'</strong> '+cPassword.val()+' <a style="cursor:pointer;" name="cAdd">답글</a> | <a style="cursor:pointer;" name="cDel">삭제</a>'+
                                                                '<p>'+cText.val().replace(/\n/g, "<br>")+'</p>'+
                                                            '</td>'+
                                                        '</tr>';
                                                           
                                //앞의 tr노드 찾기
                                var prevTr = $(this).parent().parent().parent().parent().prev();
                                //댓글 적는 에디터 삭제
                                $("#commentEditor").remove();//여기에서 삭제를 해줘야 에디터tr을 안 찾는다.
                                   
                                //댓글을 타고 올라가며 부모 tr을 찾음
                                while(prevTr.attr("name")!="commentParentCode"){
                                    prevTr = prevTr.prev();
                                }
                                //while를 타는지 체크
                                var check = false;
                                //다음 노드가 댓글(depth1)의 댓글인지 찾기위해 next
                                var nextTr = prevTr.next();
                                //뒤에 댓글(depth1)의 댓글(depth2_1)이 없다면 바로 붙인다.
                                if(nextTr.attr("name")!="commentChildCode"){
                                    prevTr.after(commentChildText);
                                }else{
                                    //댓글(depth1)의 댓글(depth2_n)이 있는경우 마지막까지 찾는다.
                                    while(nextTr.attr("name")=="commentChildCode"){
                                        nextTr = nextTr.next();
                                        check = true;
                                    }
                                }
                                   
                                if(check){//댓글(depth1)의 댓글(depth2_n)이 있다면 그 댓글(depth2_n) 뒤에 댓글(depth2_n+1) 추가
                                    nextTr = nextTr.prev();//while문에서 검색하느라 next로 넘거갔던거 다시 앞으로 돌려줌
                                    nextTr.after(commentChildText);
                                }
                                   
                            });
                               
                            //답글링크를 눌렀을때 에디터 창을 뿌려주는 이벤트, 삭제링크를 눌렀을때 해당 댓글을 삭제하는 이벤트
                            $(document).on("click","table#commentTable a", function(){//동적으로 버튼이 생긴 경우 처리 방식
                                   
                                if($(this).attr("name")=="pDel"){
                                    if (confirm("답글을 삭제 하시면 밑에 답글도 모두 삭제 됩니다. 정말 삭제하시겠습니까?") == true){    //확인
                                           
                                        var delComment = $(this).parent().parent();
                                        var nextTr = delComment.next();
                                        var delTr;
                                        //댓글(depth1)의 댓글(depth2_1)이 있는지 검사하여 삭제
                                        while(nextTr.attr("name")=="commentCode"){
                                            nextTr = nextTr.next();
                                            delTr = nextTr.prev();//삭제하고 넘기면 삭제되서 없기 때문에 다음값을 가져오기 어려워 다시 앞으로 돌려서 찾은 다음 삭제
                                            delTr.remove();
                                        }
                                           
                                        delComment.remove();
                                           
                                    }else{   //취소
                                        return;
                                    }
                                }else if($(this).attr("name")=="cDel"){
                                    if (confirm("정말 삭제하시겠습니까??") == true){    //확인
                                        $(this).parent().parent().remove();
                                    }else{   //취소
                                        return;
                                    }
                                }else{
                                    //자기 부모의 tr을 알아낸다.
                                    var parentElement = $(this).parent().parent();
                                    //댓글달기 창을 없앤다.
                                    $("#commentEditor").remove();
                                    //부모의 하단에 댓글달기 창을 삽입
                                    var commentEditor = '<tr id="commentEditor">'+
                                                            '<td style="width:1%"> </td>'+
                                                            '<td>'+
                                                                '<span class="form-inline" role="form">'+
                                                                    '<p>'+
                                                                        '<div class="form-group">'+
                                                                            '<input type="text" id="commentChildName" name="commentChildName" class="form-control col-lg-2" data-rule-required="true" placeholder="이름" maxlength="10">'+
                                                                        '</div>'+
                                                                        '<div class="form-group">'+
                                                                            ' <input type="password" id="commentChildPassword" name="commentChildPassword" class="form-control col-lg-2" data-rule-required="true" placeholder="패스워드" maxlength="10">'+
                                                                        '</div>'+
                                                                        '<div class="form-group">'+
                                                                            '<button type="button" id="commentChildSubmit" class="btn btn-default">확인</button>'+
                                                                        '</div>'+
                                                                    '</p>'+
                                                                        '<textarea id="commentChildText" name="commentChildText" class="form-control" style="width:98%" rows="4"></textarea>'+
                                                                '</span>'+
                                                            '</td>'+
                                                        '</tr>';
                                                           
                                    parentElement.after(commentEditor); 
                                }
                                   
                            });
                               
                            $( "#list" ).click(function( event ) {
                                location.href='/community/notice';
                            });
                            $( "#modify" ).click(function( event ) {
                                location.href='/community/modify/notice/${community.id}';
                            });
                            $( "#delete" ).click(function( event ) {
                                location.href='/community/delete/notice/${community.id}';
                            });
                            $( "#write" ).click(function( event ) {
                                location.href='/community/notice/edit';
                            });
                        });
                    </script>
                </div>
            </div>
            <hr/>
        </div>    
</div>
</div>
</div>
</div>
</div>
</div>


</body>
</html>