<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>upload file</h2>
	<form action="<%=request.getContextPath()%>/upload" method="post" enctype="multipart/form-data" action="${upload }">
	<label for="desc"></label>
	<input type="text" id="desc" name="desc">
	<input type="file" name="file">
	<input  type="hidden" name="subfile">
	<button type="submit">upload</button>
	</form>

</body>
<script type="text/javascript">

</script>
</html>