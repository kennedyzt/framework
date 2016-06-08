<div id="tree"></div>
<script>
	$(function() {
		$.ajax({
			type : "GET",
			url : "/menu/getlist",
			dataType : "json",
			success : function(data) {
				$('#tree').treeview({
					data : data,
					levels : 1,
					emptyIcon : "glyphicon glyphicon-stop",
					enableLinks : false,
					onNodeSelected : function(event, data) {
						var $li = $('<li><a href="#ios" data-toggle="tab"></a></li>');
						$li.attr('href', '#page_' + data.nodeId);
						$li.children().text(data.text);
						$(".nav.nav-tabs").append($li);
						
						var $tab = $('<iframe id="page_1" style="overflow-x: hidden; display: inline;" allowtransparency="true" frameborder="0" width="100%" height="100%" </iframe>');
						$tab.attr('id', '#page_' + data.nodeId);
						$tab.attr('src', '#page_' + data.href);
						$(".tab-content").append($tab);
					}
				});
			}
		});
	});
</script>