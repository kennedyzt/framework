<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>kennedy</title>
<link href="/resources/css/bootstrap/bootstrap.css" rel="stylesheet">
<script src="/resources/js/jquery/jquery-2.1.4.js"></script>
<script src="/resources/js/bootstrap/bootstrap-treeview.js"></script>
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
                <iframe src="/content" width="100%" height="100%"></iframe>
            </div>
        </div>
        <div id="footer" style="height: 100px">
            <iframe src="/footer" width="100%" height="100%"></iframe>
        </div>
    </div>
</body>
</html>
