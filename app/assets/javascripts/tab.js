$(document).ready(function () {
    $('#tab1').show();
    $('.tabs li').click(function(e) {
        e.preventDefault();
        var id = $(this).find('a').attr('href');
        $('.tab').hide();
        $('.tabs li.active').removeClass('active');
        $(id).show();
        $(this).addClass('active');
    });
});