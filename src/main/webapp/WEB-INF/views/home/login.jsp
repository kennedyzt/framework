<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>My JSP 'MyJsp.jsp' starting page</title>
</head>

<body>
	<h1>登录页面</h1>
	<form action="/login" method="post">
		<label>用户名：</label><input name="username">
		<label>密码：</label><input name ="password">
		<input type="submit" value="登录">
	</form>
</body>
</html>
