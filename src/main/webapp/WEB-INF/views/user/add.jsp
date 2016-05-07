<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<%@ include file="../layout/resources.jsp"%>
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-lg-8 col-lg-offset-2">
				<div class="page-header">
					<h2>
						<button onclick="putValue();">赋值</button>
					</h2>
				</div>

				<form id="defaultForm" method="post" class="form-horizontal" action="ajaxSubmit.php">
					<div class="form-group">
						<label class="col-lg-3 control-label">Username</label>
						<div class="col-lg-5">
							<input type="text" class="form-control" id="username" name="username" />
						</div>
					</div>

					<div class="form-group">
						<label class="col-lg-3 control-label">Email address</label>
						<div class="col-lg-5">
							<input type="text" class="form-control" name="email" />
						</div>
					</div>

					<div class="form-group">
						<label class="col-lg-3 control-label">Password</label>
						<div class="col-lg-5">
							<input type="password" class="form-control" name="password" />
						</div>
					</div>

					<div class="form-group">
						<div class="col-lg-9 col-lg-offset-3">
							<button type="button" onclick="validator();" class="btn btn-primary">Sign up</button>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
<script type="text/javascript" src="/resources/js/zt/user/add.js/"></script>
</html>
