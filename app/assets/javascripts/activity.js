$(document).ready(function() {
  $('section div.attempt').on('mouseenter', function() {
    $(this).css("background-color","#eee");
  });

  $('section div.attempt').on('mouseleave', function() {
    $(this).css("background-color","white");
  });

});
