$(function() {
    $('.info-tab-wrapper').click(function() {
        if ($(this).hasClass("on")) {
            move = '+=400px';
            $(this).toggleClass("on");
        } else {
            move = '-=400px';
            $(this).toggleClass("on");
        }

        $(this).animate({left: move}, 1000);
        $('.info-panel-wrapper').animate({width: 'toggle'}, 1000);

    }); // end click
});