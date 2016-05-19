<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@ include file="../layout/resources.jsp"%>
</head>
<body>
	<input id="doc" name="doc[]" type="file" multiple=true class="file-loading">
</body>
<script>
    $("#doc").framework.bootstrapTable({
        name : 1
    });
</script>
</html>
