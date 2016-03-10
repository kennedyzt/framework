$(function() {
    $('#table').bootstrapTable({
        url : '/user/getListByPage',
        pagination : true,
        sidePagination : 'server',
        pageSize : 10,
        uniqueId : 'id',
        toolbar : '#toolbar',
        columns : [ {
            field : 'username',
            title : '用户名'
        }, {
            field : 'nickname',
            title : '昵称'
        }, {
            field : 'telephone',
            title : '电话'
        }, {
            field : 'email',
            title : '邮箱'
        }, {
            field : 'address',
            title : '地址'
        } ],
        responseHandler : function(res) {
            return res;
        }
    });
});