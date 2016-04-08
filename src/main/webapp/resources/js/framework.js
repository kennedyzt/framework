if (parent.layer) {
    var layerIndex = parent.layer.getFrameIndex(window.name); // 弹出框的index,用于关闭
}
$(function() {
    framework.eventBinding($('*'));
});
var framework = {
    bootstrapTable : function(options) {
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
            formatRecordsPerPage : formatRecordsPerPage,
            formatShowingRows : formatShowingRows,
            responseHandler : function(res) {
                return {
                    total : res.totalCount,
                    rows : res.records
                };
            }
        };
        $.extend(DEFAULTS, options);
        $('#table').bootstrapTable(DEFAULTS);
    },
    openWindow : function(url, width, height, title, flag) {
        var index = layer.open({
            type : 2, // layer提供了5种层类型。可传入的值有：0（信息框，默认）1（页面层）2（iframe层）3（加载层）4（tips层）
            title : title,
            content : [ url, flag || 'no' ], // 不出现滚动条no
            area : [ width, height ],
            shadeClose : false, // 点击阴影是否关闭
            closeBtn : 1, // layer提供了两种风格的关闭按钮，可通过配置1和2来展示，如果不显示，则closeBtn: 0
            shift : 1, // 目前shift可支持的动画类型有0-6
            maxmin : false
        });
        return index;
    },
    alert : function(code, msg, redirectUrl) {
        if (code == 0) {
            layer.alert(msg, {
                icon : 2
            });
        }
        if (code == 1) {
            layer.alert(msg, {
                icon : 1
            }, function(index) {
                layer.close(index);
                if (redirectUrl == undefined) {
                    window.location.reload(true);
                } else {
                    window.location.href = createUrl(redirectUrl);
                }
            });
        }
    },
    tips : function(msg, domId) {
        layer.tips(msg, $("#" + domId), {
            tips : [ 1, '#34A7FF' ]
        });
    },
    redirect : function(url, layerIndex) {
        window.location.href = createUrl(url);
        if (layerIndex != undefined) { // layerIndex未定义表示不需要关闭弹出框
            parent.layer.close(layerIndex);
        }
    },
    ajax : function(opt) {
        index = layer.load(2, {
            time : 5 * 1000
        });
        var url = opt.url || "", async = opt.async || true, method = opt.method || 'GET', datas = opt.data || null, success = opt.success || fn, contentType = opt.contentType
                || 'application/x-www-form-urlencoded';
        $.ajax({
            type : method,
            url : createUrl(url),
            async : async,
            data : datas,
            dataType : "json",
            contentType : contentType,
            success : function(data) {
                setTimeout(function() {
                    if (!data.success)
                        layer.close(index);
                    success(data);
                }, 1000);
            }
        });
    },
    confirm : function(tip, yesFn) {
        layer.confirm(tip, {
            icon : 3,
            title : false
        }, function(index) {
            yesFn();
            layer.close(index);
        });
    },
    close : function(index) {
        layer.close(index);
    },
    eventBinding : function(dom) {
        $(dom).each(function() {
            if ($(this).attr("data-datetime") != undefined) {
                switch ($(this).attr("data-datetime")) {
                    case 'now':
                        $(this).val(laydate.now());
                        $(this).click(function() {
                            laydate({
                                istime : true, // 是否开启时间选择
                                format : 'YYYY-MM-DD hh:mm:ss', // 日期格式
                                istoday : true
                            });
                        });
                        break;
                    case 'datetime':
                        $(this).click(function() {
                            laydate({
                                istime : true, // 是否开启时间选择
                                format : 'YYYY-MM-DD hh:mm:ss', // 日期格式
                                istoday : true
                            });
                        });
                        break;
                    default:
                        $(this).click(function() {
                            laydate({
                                istoday : true
                            });
                        });
                }
            }
        });
    }
}
// 初始化图片上传控件
function initFileInput(ctrlName, uploadUrl) {
    var control = $('#' + ctrlName);
    var options = {
        language : 'zh', // 设置语言
        uploadUrl : createUrl(uploadUrl),
        maxFileCount : 9, // 表示允许同时上传的最大文件个数
        allowedFileExtensions : [ 'jpeg', 'jpg', 'png', 'gif', 'bmp', 'tif' ],// 接收的文件后缀
        overwriteInitial : false,
        showPreview : true, // 是否显示预览
        showUpload : false, // 是否显示上传按钮
        showCaption : true, // 是否显示标题
        showClose : false, // 关闭窗口
        maxImageWidth : 1500,
        maxImageHeight : 1500,
        previewSettings : {
            image : {
                width : "200",
                height : "160px"
            },
            html : {
                width : "213px",
                height : "160px"
            },
            text : {
                width : "160px",
                height : "136px"
            },
            video : {
                width : "213px",
                height : "160px"
            },
            audio : {
                width : "213px",
                height : "80px"
            },
            flash : {
                width : "213px",
                height : "160px"
            },
            object : {
                width : "213px",
                height : "160px"
            },
            other : {
                width : "160px",
                height : "160px"
            }
        },
        browseClass : "btn btn-primary", // 按钮样式
        defaultPreviewContent : '<img src="" style="height:160px">',
        previewFileIcon : "<i class='glyphicon glyphicon-king'></i>"
    };
    if (uploadUrl == undefined) {
        delete options.uploadUrl;
    }
    control.fileinput(options).on("filepredelete", function(jqXHR) {
        var abort = true;
        if (confirm("确认删除图片?")) {
            abort = false;
        }
        return abort;
    });
}

// 初始化文档上传控件
function initDocFileInput(ctrlName, uploadUrl) {
    var control = $('#' + ctrlName);
    var options = {
        language : 'zh', // 设置语言
        uploadUrl : createUrl(uploadUrl),
        allowedFileExtensions : [ 'docx', 'doc', 'word', 'excel', 'ppt', 'xls', 'pdf', 'txt', 'rtf' ],// 接收的文件后缀
        showPreview : false, // 是否显示预览
        showUpload : false, // 是否显示上传按钮
        showCaption : true, // 是否显示标题
        showClose : false, // 关闭窗口
        previewSettings : {
            image : {
                width : "200",
                height : "160px"
            },
            html : {
                width : "213px",
                height : "160px"
            },
            text : {
                width : "160px",
                height : "136px"
            },
            video : {
                width : "213px",
                height : "160px"
            },
            audio : {
                width : "213px",
                height : "80px"
            },
            flash : {
                width : "213px",
                height : "160px"
            },
            object : {
                width : "213px",
                height : "160px"
            },
            other : {
                width : "160px",
                height : "160px"
            }
        },
        browseClass : "btn btn-primary", // 按钮样式
        defaultPreviewContent : '<img src="" style="height:160px">',
        previewFileIcon : "<i class='glyphicon glyphicon-king'></i>"
    };
    if (uploadUrl == undefined) {
        delete options.uploadUrl;
    }
    control.fileinput(options)
}

/** 分页国际化 */
function formatRecordsPerPage(pageNumber) {
    return sprintf('%s records per page', pageNumber);
}

function formatShowingRows(pageFrom, pageTo, totalRows) {
    return sprintf('Showing %s to %s of %s rows', pageFrom, pageTo, totalRows);
}

var sprintf = function(str) {
    var args = arguments, flag = true, i = 1;

    str = str.replace(/%s/g, function() {
        var arg = args[i++];

        if (typeof arg === 'undefined') {
            flag = false;
            return '';
        }
        return arg;
    });
    return flag ? str : '';
};