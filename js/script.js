$(function() {
  
  $("#timeline-view").click(function() {
    window.location.href = "../pages/timeline.html"
  });

});

// Back to top
$(window).scroll(function() {
    if ($(this).scrollTop() >= 100) {
        $('#gg-to-top').fadeIn(200);
    } else {
        $('#gg-to-top').fadeOut(200);
    }
});
$('#gg-to-top').click(function() {
    $('body,html').animate({
        scrollTop : 340
    }, 500);
});