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
	<div id="tree">
	</div>
	 <a href="/user/add" target="content"> aaaa</a>
</body>
</html>
<script>
    var tree = [ {
        text : "系统管理",
        icon : "glyphicon glyphicon-stop",
        selectedIcon : "glyphicon glyphicon-stop",
        color : "#ff0000",
        backColor : "#00FF00 ",
        href : "/a",
        selectable : true,
        state : {
            checked : true,
            disabled : false,
            expanded : true,
            selected : true
        },
        tags : [ 'tags' ],
        nodes : [ {
            text : "用户管理",
            nodes : [ {
                text : "用户添加",
                href : "/user/add"
            }, {
                text : "用户分组"
            } ]
        }, {
            text : "权限设置"
        } ]
    }, {
        text : "采购管理"
    }, {
        text : "销售管理"
    }, {
        text : "库存管理"
    }, {
        text : "报表"
    } ];
    $('#tree').treeview({
        data : tree,
        backColor : "#00FF00 ",
        emptyIcon : "glyphicon glyphicon-stop",
        enableLinks : true
    });
</script>