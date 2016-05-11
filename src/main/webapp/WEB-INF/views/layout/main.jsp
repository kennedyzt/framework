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
            <iframe src="/content" name="content" width="100%" height="100%"></iframe>
        </div>
    </div>
    <div class="footer" id="footer">
        <jsp:include flush="true" page="footer.jsp"></jsp:include>
    </div>
    <script src="/resources/js/framework/layout/layout.js"></script>
</body>
</html>
