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
    
    $("#header").css({
        "width" : _width,
        "height" : 100
    });
    
    $("#main").css({
        "height" : _height-200,
        "width" : _width
    });
    
    $(".left").css({
        "height" : _height-200,
        "width" : 200
    });
    
    $(".tab-content").css({
        "height" : _height-200-40,
        "width" : _width-200
    });
    
    $("#footer").css({
        "height" : 100,
        "width" : _width
    });
}
