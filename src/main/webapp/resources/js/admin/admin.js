$(function() {
	var defaultData = [ {
		text : '系统设置',
		href : '#parent1',
		tags : [ '4' ],
		nodes : [ {
			text : '用户管理',
			href : '#child1',
			tags : [ '2' ],
			nodes : [ {
				text : '普通用户',
				href : '#grandchild1',
				tags : [ '0' ],
				nodes : [ {
					text : '一组',
					href : '#child1',
					tags : [ '2' ],
					nodes : [ {
						text : '一小组',
						href : '#child1',
						tags : [ '2' ]
					} ]
				} ]
			}, {
				text : 'Grandchild 2',
				href : '#grandchild2',
				tags : [ '0' ]
			} ]
		}, {
			text : 'Child 2',
			href : '#child2',
			tags : [ '0' ]
		} ]
	}, {
		text : '菜单管理',
		href : '#parent2',
		tags : [ '0' ]
	}, {
		text : '权限管理',
		href : '#parent3',
		tags : [ '0' ]
	}, {
		text : '采购订单',
		href : '#parent4',
		tags : [ '0' ]
	}, {
		text : '普通用户',
		href : '#parent5',
		tags : [ '0' ]
	} ];
	$('#treeview1').treeview({
		data : defaultData
	});
	$("#user_data").freezeHeader({ 'height': '300px' });
});