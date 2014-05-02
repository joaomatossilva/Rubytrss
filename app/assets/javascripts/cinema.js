/*
# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
*/
$(function() {
    console.log("hey...")
    $(".tab-selector").each(function (index, item) {
        console.log(item);
        var targetElement = item.getAttribute("data-target");
        console.log(targetElement);
        /*
        $("li", item).each(function (index2, itemLink) {
            console.log(itemLink);
            console.log("settings click")
            itemLink.click(function () {
                var address = $(this).getAttribute("data-source");
                console.log(address);
                $.ajax({
                    url: address
                }).done(function (data) {
                    console.log("finished");
                    $("#" + targetElement).html(data);
                });
            });
        });
        */

        $("li", item).click(function () {
            var address = this.getAttribute("data-source");
            console.log(address);
            $.ajax({
                url: address
            }).done(function (data) {
                console.log("finished");
                $("#" + targetElement).html(data);
            });
        });
    });
});