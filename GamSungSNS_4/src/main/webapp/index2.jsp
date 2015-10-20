<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" href="css/dropzone/basic.css" />
<link rel="stylesheet" href="css/dropzone/dropzone.css" />

<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script src="js/dropzone/dropzone.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
<script type="text/javascript">
		/* $("div#myId").dropzone({ url: "/file/post" }); */
		/* var Dropzone = require("dropzone");
		var myDropzone = new Dropzone("#mdrop"); */
		/* $("div#myId").dropzone({ url: "/file/post" }); */
		Dropzone.options.mdrop = {
					paramName: "file", // The name that will be used to transfer the file
				  	maxFilesize: 2, // MB
				  	accept: function(file, done) {
						if (file.name == "1.jpg") {
					    	done("Naha, you don't.");
					    //	file.removefile();
					    }
					    else { done(); }
				  	}
		/* ,
					init: function() {
						this.on("addedfile", function(file) { alert("Added file."); });
					} */
		};
		$('.dz-preview').click(function(file){
			alert("daf");
			Dropzone.removeFile(file);
		})
		 /* 
		$("#mdrop").dropzone("addedfile", function(file) {
			alert("dafa");
			  file.previewElement.addEventListener("click", function() {
			    myDropzone.removeFile(file);
			  });
			}); */
		/* Dropzone.autoDiscover = false; */
		
		// or disable for specific dropzone:
		// Dropzone.options.myDropzone = false;

		/* $(function() {
			  	var myDropzone = new Dropzone("#mdrop");
		  		myDropzone.on("addedfile", function(file) {
		    		alert("dfdf");
		  });
		}) */
</script>
</head>
<body>
	<form action="<%=request.getContextPath()%>/upload" class="dropzone " id="mdrop" enctype="multipart/form-data">
		<div class="fallback" id="template-container">
			<input id="ifile" name="file" type="file" accept="image/*" multiple />
		</div>
	</form>
	<!-- <div class="dz-preview dz-file-preview">
			<div class="dz-details">
				<div class="dz-filename">
					<span data-dz-name></span>
				</div>
				<div class="dz-size" data-dz-size></div>
				<img data-dz-thumbnail />
			</div>
			<div class="dz-progress">
				<span class="dz-upload" data-dz-uploadprogress></span>
			</div>
			<div class="dz-success-mark">
				<span>✔</span>
			</div>
			<div class="dz-error-mark">
				<span>✘</span>
			</div>
			<div class="dz-error-message">
				<span data-dz-errormessage></span>
			</div>
		</div> -->
</body>
</html>