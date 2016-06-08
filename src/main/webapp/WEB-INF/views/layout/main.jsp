<!DOCTYPE html>
<html>
<head>
<title>kennedy</title>
<meta charset="UTF-8">
<jsp:include flush="true" page="resources.jsp"></jsp:include>
<link rel="stylesheet" href="/resources/css/framework/layout.css" />
</head>
<body id="body">
	<div class="header" id="header">
		<jsp:include flush="true" page="header.jsp"></jsp:include>
	</div>
	<div class="main" id="main">
		<div class="left" id="left">
			<jsp:include flush="true" page="menu.jsp"></jsp:include>
		</div>
		<div class="right" id="right">
			<ul id="myTab" class="nav nav-tabs">
				<li class="active"><a href="#home" data-toggle="tab">W3Cschool
						Home </a></li>
				<li><a href="#ios" data-toggle="tab">iOS</a></li>
			</ul>
			<div class="tab-content">
				<div class="tab-pane fade in active" id="home">
					<iframe id="page_1" style="overflow-x: hidden; display: inline;" allowtransparency="true" frameborder="0" width="100%" height="100%" src="user/list"></iframe>
				</div>
				<div class="tab-pane fade in active" id="ios">
					<p>ios</p>
				</div>
			</div>
		</div>
	</div>
	<div class="footer" id="footer">
		<jsp:include flush="true" page="footer.jsp"></jsp:include>
	</div>
	<script src="/resources/js/framework/layout/layout.js"></script>
</body>
</html>
