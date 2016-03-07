<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>My HTML File</title>
<link rel="stylesheet" href="/resources/css/bootstrap/bootstrap.css">
<script src="/resources/js/jquery/jquery-2.1.4.js"></script>
<script src="/resources/js/bootstrap/bootstrap-treeview.js"></script>
</head>
<body>
	<div id="tree"></div>
</body>
</html>
<script>
    $(function() {
        $.ajax({
            type : "GET",
            url : "/menu/getlist",
            dataType : "json",
            success : function(data) {
                $('#tree').treeview({
                    data : data,
                    levels : 1,
                    emptyIcon : "glyphicon glyphicon-stop",
                    enableLinks : true
                });
            }
        });
    });
</script>