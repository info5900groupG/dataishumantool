//$(function() {
//  
//  $("#timeline-view").click(function() {
//    window.location.href = "../pages/timeline.html"
//  });
//
//});

// Learn more
$('#gg-learn-more').click(function() {
    $('#gg-bg-well').slideToggle();
});

//Dropdown
//$('[gg-data-toggle="dropdown"]').dropdown();

$('#gg-caret').click(function() {
    $('#gg-span-dropdown').dropdown("toggle");
    $('#gg-ul-dropdown').toggle();
});

// Back to top
$(window).scroll(function() {
    if ($(this).scrollTop() > 340) {
        $('#gg-to-top').fadeIn(200);
    } else {
        $('#gg-to-top').fadeOut(200);
    }
});
$('#gg-to-top').click(function() {
    $('body,html').animate({
        scrollTop : 440
    }, 500);
});


// Smooth jump
$(function() {
  $('a[class="smoothJump"]').click(function() {
      console.log('smoothJump ed');
    if (location.pathname.replace(/^\//,'') == this.pathname.replace(/^\//,'') && location.hostname == this.hostname) {
      var target = $(this.hash);
      target = target.length ? target : $('[name=' + this.hash.slice(1) +']');
      if (target.length) {
        $('html, body').animate({
          scrollTop: target.offset().top-140
        }, 1000);
        return false;
      }
    }
  });
});