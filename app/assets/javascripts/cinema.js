/*
# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
*/
$(function() {
    $(".tab-selector").each(function (index, item) {
        var $targetElement = $("#" + item.getAttribute("data-target"));
        var $loadingElement = $("#" + item.getAttribute("data-loading"));
        $targetElement.hide();
        $loadingElement.hide();

        $("li", item).click(function () {
            $("li", item).removeClass("active");
            $(this).addClass("active");
            var address = this.getAttribute("data-source");
            $targetElement.hide();
            $loadingElement.show();
            $.ajax({
                url: address
            }).done(function (data) {
                console.log("finished loading " + address);
                $targetElement.html(data);
                $targetElement.show();
                $loadingElement.hide();
            });
        });
        $("li", item).first().click();
    });
});