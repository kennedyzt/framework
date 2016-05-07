<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>文件上传</title>
<%@ include file="../layout/resources.jsp"%>
<link rel="stylesheet" href="/resources/css/bootstrap/fileinput.css" />
<script src="/resources/js/bootstrap/fileinput.js"></script>
</head>
<body>
	<form id="file-input-1-form" enctype="multipart/form-data" class=".form-horizontal">
		<input id="file-input-1" name="file-input-1" type="file" multiple class="file-loading">
		<button type="button" onclick="upload();" class="btn default">上传</button>
	</form>
</body>
<script type="text/javascript" src="/resources/js/zt/demo/fileinput.js"></script>
</html>