<div id="tree"></div>
<script>
    $(function() {
        $
                .ajax({
                    type : "GET",
                    url : "/menu/getlist",
                    dataType : "json",
                    success : function(data) {
                        $('#tree')
                                .treeview(
                                        {
                                            data : data,
                                            levels : 1,
                                            emptyIcon : "glyphicon glyphicon-stop",
                                            enableLinks : false,
                                            onNodeSelected : function(event, data) {
                                                // 若没有href 不做任何处理
                                                if (data.href) {
                                                    // 已存在该节点则不追加节点，高亮显示当前节点
                                                    var flag = false;
                                                    $.each($('.nav.nav-tabs').children(), function(i, val) {
                                                        if ($(val).attr('data-id') === String(data.nodeId)) {
                                                            $(val).find("a").click();
                                                            flag = true;
                                                            return;
                                                        }
                                                    });
                                                    if (!flag) {
                                                        var $li = $('<li data-id="'+data.nodeId+'"><a data-toggle="tab"></a></li>');
                                                        $li.find('a').attr('href', '#page_' + data.nodeId);
                                                        $li.children().text(data.text);
                                                        $(".nav.nav-tabs").append($li);

                                                        var $tab = $('<div class="tab-pane fade in active" id="page_'+data.nodeId+'" style="width:100%;height:100%"><iframe width="100%" height="100%" style="overflow-x: hidden; display: inline;" allowtransparency="true" frameborder="0" width="100%" height="100%" </iframe></div>');
                                                        $tab.attr('id', 'page_' + data.nodeId);
                                                        $tab.find('iframe').attr('src', data.href);
                                                        $(".tab-content").append($tab);

                                                        $li.find("a").click();
                                                    }
                                                }
                                            }
                                        });
                    }
                });
    });
</script>