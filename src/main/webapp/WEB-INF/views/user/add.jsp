<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/resources/css/bootstrap/bootstrap.css" />
<script type="text/javascript" src="/resources/js/jquery/jquery-2.1.4.js"></script>
<script type="text/javascript" src="/resources/js/bootstrap/bootstrap-treeview.js"></script>
<script type="text/javascript" src="/resources/js/bootstrap/jquery.freezeheader.js"></script>
<script type="text/javascript" src="/resources/js/framework.js"></script>
<script type="text/javascript" src="/resources/js/layer/layer.js"></script>
</head>
<body>
    <button type="button" onclick="add();" class="btn btn-default">添加用户</button>
    <form role="form">
        <div class="form-group">
            <label for="name">名称</label> <input type="text" data-alert="show" class="form-control" id="name" placeholder="请输入名称">
        </div>
        <div class="form-group">
            <label for="name">名称</label> <input type="text" data-alert="show" class="form-control" id="name" placeholder="请输入名称">
        </div>
        <div class="form-group">
            <label for="name">名称</label> <input type="text" data-alert="show" class="form-control" id="name" placeholder="请输入名称">
        </div>
        <button type="submit" class="btn btn-default">提交</button>
    </form>
</body>
</html>
<script>
    function add() {
        layer.open({
            type : 2,
            title : '百度首页',
            shadeClose : true,
            shade : 0.8,
            area : [ '90%', '90%' ],
            content : 'http://www.baidu.com' //iframe的url
        });
    }
</script>