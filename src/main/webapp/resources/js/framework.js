$(function() {
    framework.eventBinding($("input"));
});
var framework = {
        eventBinding : function(dom) {
        $(dom).each(function() {
            if ($(this).attr("data-alert") == "show") {
                $(this).change(function(){
                    alert($(this).val());
                });
            }
        })
    }
}