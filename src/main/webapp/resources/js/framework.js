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
