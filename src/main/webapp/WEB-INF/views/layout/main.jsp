<!DOCTYPE html>
<html>
<head>
<title>kennedy</title>
<meta charset="utf-8">
<%@ include file="resources.jsp"%>
</head>
<body>
	<div id="main">
		<div id="header">
			<iframe src="/header" width="100%" height="100"></iframe>
		</div>
		<div style="height: 500px">
			<div id="menu" style="float: left; width: 20%; height: 100%">
				<iframe src="/menu" width="100%" height="100%"></iframe>
			</div>
			<div id="content" style="float: left; width: 80%; height: 100%">
				<iframe src="/content" name="content" width="100%" height="100%"></iframe>
			</div>
		</div>
		<div id="footer" style="height: 100px">
			<iframe src="/footer" width="100%" height="100%"></iframe>
		</div>
	</div>
</body>
</html>
