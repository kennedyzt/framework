(function($) {
    $.fn.frameworkTable = function(options) {
        var DEFAULTS = {
            height : 550,
            undefinedText : '-',
            method : 'get',
            pagination : true,
            sidePagination : 'server',
            pageSize : 10,
            pageList : [ 10, 25, 50, 100, 'ALL' ],
            minimumCountColumns : 2,
            search : true,
            uniqueId : 'id',
            toolbar : '#toolbar',
            responseHandler : function(res) {
                return {
                    total : res.totalCount,
                    rows : res.records
                };
            }
        };
        $.extend(DEFAULTS, options);
        $(this).bootstrapTable(DEFAULTS);
    }
})(jQuery);
var framework = {
    openWindow : function(url, width, height, title, allowScroll) {
        var index = layer.open({
            type : 2, // layer提供了5种层类型。可传入的值有：0（信息框，默认）1（页面层）2（iframe层）3（加载层）4（tips层）
            title : title,
            content : [ url, allowScroll || 'yes' ], // 不出现滚动条no
            area : [ width, height ],
            shadeClose : false, // 点击阴影是否关闭
            closeBtn : 1,
            shift : 1, // 目前shift可支持的动画类型有0-6
            maxmin : false
        });
        return index;
    },
    tips : function(msg, obj) {
        if (typeof obj == 'object') {
            layer.tips(msg, obj, {
                tips : [ 3, '#34A7FF' ],
                time : 1000
            })
        } else {
            layer.tips(msg, $("#" + obj), {
                tips : [ 1, '#34A7FF' ]
            });
        }
    }
}
