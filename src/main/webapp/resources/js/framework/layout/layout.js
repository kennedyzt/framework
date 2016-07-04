$(function() {
    resizeHW();
    $(window).resize(function() {
        resizeHW();
    });
});

function resizeHW() {
    var _height = $(window).height(); // 屏幕高度
    var _width = $(window).width(); // 屏幕宽度
    var _headerHeight = 100; // header高度
    var _footerHeight = 100; // footer高度
    var _menuWidth = 200; // 菜单宽度
    $("#body").css({
        "width" : _width,
        "height" : _height
    });

    $("#header").css({
        "width" : _width,
        "height" : _headerHeight
    });

    $("#main").css({
        "height" : _height - (_headerHeight + _footerHeight),
        "width" : _width
    });

    $(".left").css({
        "float" : "left",
        "height" : _height - (_headerHeight + _footerHeight),
        "width" : _menuWidth
    });

    $(".tab-content").css({
        "float" : "left",
        "height" : _height - (_headerHeight + _footerHeight),
        "width" : _width - _menuWidth
    });

    $("#footer").css({
        "height" : _footerHeight,
        "width" : _width
    });
}
