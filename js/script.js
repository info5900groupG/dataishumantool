//$(function() {
//  
//  $("#timeline-view").click(function() {
//    window.location.href = "../pages/timeline.html"
//  });
//
//});

// Learn more
$('#gg-learn-more').click(function() {
    if ($(this).find('i').hasClass('fa-search-plus')) {
        $(this).find('i').attr('class', 'fa fa-search-minus');
    } else {
        $(this).find('i').attr('class', 'fa fa-search-plus');
    }
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
    if ($(this).scrollTop() > 100) {
        $('#gg-bg-well').slideUp();
        $('#gg-learn-more').find('i').attr('class', 'fa fa-search-plus');
    }
    if ($(this).scrollTop() > 480) {
        $('#gg-to-top').fadeIn(200);
    } else {
        $('#gg-to-top').fadeOut(200);
    }
});
$('#gg-to-top').click(function() {
    $('body,html').animate({
        scrollTop : 480
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
          scrollTop: target.offset().top-100
        }, 1000);
        return false;
      }
    }
  });
});