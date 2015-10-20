<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>

<title>Insert title here</title>
<!-- file input -->
<script src="js/jquery-1.11.2.min.js"></script>

<link rel="stylesheet" href="css/dropzone/basic.css" />
<link rel="stylesheet" href="css/dropzone/dropzone.css" />
<link href="css/fileinput.min.css" media="all" rel="stylesheet" type="text/css" />
<script src="js/plugins/canvas-to-blob.min.js" type="text/javascript"></script>
<script src="js/fileinput.min.js" type="text/javascript"></script>
<script src="js/fileinput_locale_LANG.js"></script>
<script src="js/dropzone/dropzone.js"></script>
<!-- <script>
	$("#input-709").fileinput({
		uploadUrl : "http://localhost/file-upload-single/1", // server upload action
		uploadAsync : true,
		showPreview : false,
		allowedFileExtensions : [ 'jpg', 'png', 'gif' ],
		maxFileCount : 5,
		elErrorContainer : '#kv-error-1'
	}).on('filebatchpreupload', function(event, data, id, index) {
		$('#kv-success-1').html('<h4>Upload Status</h4><ul></ul>').hide();
	}).on(
			'fileuploaded',
			function(event, data, id, index) {
				var fname = data.files[index].name, out = '<li>'
						+ 'Uploaded file # ' + (index + 1) + ' - ' + fname
						+ ' successfully.' + '</li>';
				$('#kv-success-1 ul').append(out);
				$('#kv-success-1').fadeIn('slow');
			});
</script> -->
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
									<form action="<%=request.getContextPath()%>/upload" class="dropzone col-sm-12" id="mdrop" enctype="multipart/form-data">
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
				<button type="button" class="btn btn-info" data-dismiss="modal">등록</button>
				<button type="button" class="btn btn-info" data-dismiss="modal">닫기</button>
			</div>
		</div>
	</div>
</body>
</html>