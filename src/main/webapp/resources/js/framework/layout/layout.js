$(function() {
	resizeHW();
	$(window).resize(function() {
		resizeHW();
	});
});

function resizeHW() {
	var _height = $(window).height();
	var _width = $(window).width();
	$("#body").css({
		"width" : _width,
		"height" : _height
	});
}
