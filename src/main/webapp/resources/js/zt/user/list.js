$(function() {
    framework.bootstrapTable({
        url : '/user/getListByPage',
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
        } ]
    });
});

function toAdd() {
    framework.openWindow('/user/add', '40%', '60%', '添加用户');
}