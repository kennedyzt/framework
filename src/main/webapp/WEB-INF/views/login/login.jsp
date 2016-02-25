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
    <div>
        <div id="header" style="height: 100px; width: 100%;">Java 技术框架整合</div>
        <div id="middle" style="width: 100%;">
            <div id="menu" style="width: 20%; float: left">
                <div id="tree"></div>
            </div>
            <div id="container" style="width: 80%; float: left">用户列表</div>
        </div>
        <div id="footer" style="height: 100px;">合作伙伴</div>
    </div>
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